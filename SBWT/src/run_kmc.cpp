
#include "run_kmc.hh"
#include "globals.hh"
#include "kmc_api/kmc_file.h"
#include "include/kmc_runner.h"
#include "kmc_construct_helper_classes.hh"
#include "SeqIO/SeqIO.hh"

#include <iostream>
#include <vector>
#include <utility>

#include "kmc_tools/config.h"
#include "kmc_tools/check_kmer.h"
#include "kmc_tools/parser.h"
#include "kmc_tools/timer.h"
#include "kmc_tools/kmc1_db_writer.h"
#include "kmc_tools/parameters_parser.h"
#include "kmc_tools/histogram_writer.h"
#include "kmc_tools/dump_writer.h"
#include "kmc_tools/fastq_reader.h"
#include "kmc_tools/fastq_filter.h"
#include "kmc_tools/fastq_writer.h"
#include "kmc_tools/db_reader_factory.h"
#include "kmc_tools/db_writer_factory.h"
#include "kmc_tools/kff_random_access.h"
#ifdef ENABLE_LOGGER
#include "kmc_tools/develop.h"
#endif

using namespace std;
using namespace kmc_tools;

namespace sbwt{

namespace kmc_interface{

// Code in this namespace is copy-pasted and modified code from KMC so that we can call
// KMC-sort from our code.

struct KMCAlreadySortedException : public std::exception
{
	const char * what () const throw ()
    {
    	return "KMC database already sorted.";
    }
};


template<unsigned SIZE> class CTools
{
	CParametersParser& parameters_parser;
	CConfig& config;

	template<typename KMCDB>
	void ProcessTransformOper(KmerDBOpenMode open_mode)
	{
		KMCDB* db = new KMCDB(config.headers.front(), config.input_desc.front(), config.percent_progress, open_mode);

		vector<CDbWriter<SIZE>*> kmc_db_writers;
		vector<CBundle<SIZE>*> bundles;
		vector<CDumpWriterForTransform<SIZE>> dump_writers;
		vector<CHistogramWriterForTransform> histogram_writers;

		for (auto& desc : config.transform_output_desc)
		{
			switch (desc.op_type)
			{
			case CTransformOutputDesc::OpType::COMPACT:
			case CTransformOutputDesc::OpType::REDUCE:
			case CTransformOutputDesc::OpType::SORT:
			case CTransformOutputDesc::OpType::SET_COUNTS:
				kmc_db_writers.push_back(db_writer_factory<SIZE>(desc));
				kmc_db_writers.back()->MultiOptputInit();
				bundles.push_back(new CBundle<SIZE>(nullptr));
				break;
			case CTransformOutputDesc::OpType::DUMP:
				dump_writers.emplace_back(desc);
				dump_writers.back().Init();
				break;
			case CTransformOutputDesc::OpType::HISTOGRAM:
				histogram_writers.emplace_back(desc);
				histogram_writers.back().Init();
				break;
			}
		}
		CKmer<SIZE> kmer;
		uint32 counter;
		
		if (open_mode == KmerDBOpenMode::counters_only) // only histogram oper
		{
			while (db->NextCounter(counter))
			{
				for (auto& out : histogram_writers)
					out.PutCounter(counter);
			}
		}
		else if (open_mode == KmerDBOpenMode::sequential) //historam or dump only
		{
			while (db->NextKmerSequential(kmer, counter))
			{
				for (auto& out : histogram_writers)
					out.PutCounter(counter);
				for (auto& out : dump_writers)
					out.PutKmer(kmer, counter);
			}
		}
		else 
		{
			CBundle<SIZE> tmp_bundle(db);
			db = nullptr;
			while (!tmp_bundle.Finished())
			{
				for (auto& out : histogram_writers)
					out.PutCounter(tmp_bundle.TopCounter());
				for (auto& out : dump_writers)
					out.PutKmer(tmp_bundle.TopKmer(), tmp_bundle.TopCounter());

				for (uint32 i = 0; i < bundles.size(); ++i)
				{
					bundles[i]->Insert(tmp_bundle.TopKmer(), tmp_bundle.TopCounter());
					if (bundles[i]->Full())
					{
						kmc_db_writers[i]->MultiOptputAddResultPart(*bundles[i]);
					}
				}

				tmp_bundle.Pop();				
			}			
		}

		for (uint32 i = 0; i < bundles.size(); ++i)
		{
			if (!bundles[i]->Empty())
				kmc_db_writers[i]->MultiOptputAddResultPart(*bundles[i]);
		}

		for (auto& out : histogram_writers)
			out.Finish();
		for (auto& out : dump_writers)		
			out.Finish();			
		
		for (auto& out : kmc_db_writers)
		{
			out->MultiOptputFinish();
			delete out;
		}
		for (auto& b : bundles)
			delete b;
			
		delete db;
	}

	bool info()
	{
		auto header = CConfig::GetInstance().headers.front();

		if (header.kmer_file_type == KmerFileType::KMC1 || header.kmer_file_type == KmerFileType::KMC2)
		{
	  std::cout << "k                 :  " << header.kmer_len << "\n"
				<< "total k-mers      :  " << header.total_kmers << "\n"
				<< "cutoff max        :  " << header.max_count << "\n"
				<< "cutoff min        :  " << header.min_count << "\n"
				<< "counter size      :  " << header.counter_size << " bytes\n"
				<< "mode              :  " << (header.mode ? "quality-aware counters" : "occurrence counters") << "\n"
				<< "both strands      :  " << (header.both_strands ? "yes" : "no") << "\n"
				<< "database format   :  " << (header.kmer_file_type == KmerFileType::KMC2 ? "KMC2.x" : "KMC1.x") << "\n"
				<< "signature length  :  " << header.signature_len << "\n"
				<< "number of bins    :  " << header.no_of_bins << "\n"
				<< "lut_prefix_len    :  " << header.lut_prefix_len << "\n";
		}
		else if (header.kmer_file_type == KmerFileType::KFF1)
		{
			std::cout << "This is KFF file, summary:\n";
			std::cout << "canonical         :  " << (header.kff_file_struct.both_strands ? "yes" : "no") << "\n";
			std::cout << "all k-mers unique :  " << (header.kff_file_struct.all_unique ? "yes" : "no") << "\n";
			std::cout << "symbols encoding:\n";
			std::cout << "\tA: " << ((header.kff_file_struct.encoding >> 6) & 3) << "\n";
			std::cout << "\tC: " << ((header.kff_file_struct.encoding >> 4) & 3) << "\n";
			std::cout << "\tG: " << ((header.kff_file_struct.encoding >> 2) & 3) << "\n";
			std::cout << "\tT: " << (header.kff_file_struct.encoding        & 3) << "\n";

			std::set<uint64_t> k_values;
			for (auto& e : header.kff_file_struct.scopes)
			{
				std::cout << "k             :  " << e.kmer_size << "\n";
				std::cout << "data_size     :  " << e.data_size << "\n";
				std::cout << "max           :  " << e.max_in_block << "\n";
				if(e.minimizer_size != (std::numeric_limits<uint64_t>::max)())
					std::cout << "m             :  " << e.minimizer_size << "\n";

				std::cerr << "footer values:\n";
				for (const auto& e : header.kff_file_struct.footer)
				{
					std::cerr << "\t" << e.first << "      :  " << e.second << "\n";
				}
				std::cout << "Data sections:\n";
				uint64_t tot_nb_blocks{};
				for (auto& s : e.data_sections)
				{
					std::string type;
					switch (s.type)
					{
						case KFFDataSectionType::RAW:
							type = "raw";
							break;
						case KFFDataSectionType::MINIMIZER:
							type = "minimizer";
							break;
						default:
						{
							std::cerr << "Error: this should never happen, please contact authors: " << __FILE__ << "\t" << __LINE__ << "\n";
							exit(1); 
						}					
					}

					std::cout << "\t" << "type            :  " << type << "\n";
					std::cout << "\t" << "data_start      :  " << s.data_start_pos << "\n";
					std::cout << "\t" << "nb_blocks       :  " << s.nb_blocks << "\n";

					tot_nb_blocks += s.nb_blocks;
					
					std::cout << "\t" << "minimizer (HEX) :  ";
					for (auto x : s.minimizer)
						std::cout << std::hex << (int)x << " ";
					std::cout << "\n";
				}				

				std::cout << "tot_nb_blocks :  " << tot_nb_blocks << "\n";
			}

		}
		else
		{
			std::cerr << "Error: this should never happen, please contact authors: " << __FILE__ << "\t" << __LINE__ << "\n";
			exit(1);
		}
		return true;
	}

	bool filter()
	{
		CFilteringParams& filtering_params = config.filtering_params;
		CFilteringQueues filtering_queues;				

		//set parameters and quques
		int32 avaiable_threads = config.avaiable_threads;
		filtering_params.n_readers = max(1, avaiable_threads / 2);

		bool gz_bz2 = false;
		vector<uint64> file_sizes;

		for (auto& p : filtering_params.input_srcs)
		{
			string ext(p.end() - 3, p.end());
			if (ext == ".gz" || ext == ".bz2")
			{
				gz_bz2 = true;				
			}
			FILE* tmp = my_fopen(p.c_str(), "rb");
			if (!tmp)
			{
				cerr << "Error: cannot open file: " << p.c_str();
				exit(1);
			}
			my_fseek(tmp, 0, SEEK_END);
			file_sizes.push_back(my_ftell(tmp));
			fclose(tmp);
		}
		if (gz_bz2)
		{
			sort(file_sizes.begin(), file_sizes.end(), greater<uint64>());
			uint64 file_size_threshold = (uint64)(file_sizes.front() * 0.05);
			int32 n_allowed_files = 0;
			for (auto& p : file_sizes)
			if (p > file_size_threshold)
				++n_allowed_files;
			filtering_params.n_readers = MIN(n_allowed_files, MAX(1, avaiable_threads / 2));
		}
		else
			filtering_params.n_readers = 1;



		avaiable_threads -= filtering_params.n_readers;
		filtering_params.n_filters = max(1, avaiable_threads);
		
		filtering_params.fastq_buffer_size = 1 << 25; 

		filtering_params.mem_part_pmm_fastq_reader = filtering_params.fastq_buffer_size + CFastqReaderKMCTools::OVERHEAD_SIZE;
		filtering_params.mem_tot_pmm_fastq_reader = filtering_params.mem_part_pmm_fastq_reader * (filtering_params.n_readers + 48);

		filtering_params.mem_part_pmm_fastq_filter = filtering_params.mem_part_pmm_fastq_reader;
		filtering_params.mem_tot_pmm_fastq_filter = filtering_params.mem_part_pmm_fastq_filter * (filtering_params.n_filters + 48);

		filtering_queues.input_files_queue = new CInputFilesQueue(filtering_params.input_srcs); 
		filtering_queues.input_part_queue = new CPartQueue(filtering_params.n_readers);
		filtering_queues.filtered_part_queue = new CPartQueue(filtering_params.n_filters);

		filtering_queues.pmm_fastq_reader = new CMemoryPool(filtering_params.mem_tot_pmm_fastq_reader, filtering_params.mem_part_pmm_fastq_reader); 
		filtering_queues.pmm_fastq_filter = new CMemoryPool(filtering_params.mem_tot_pmm_fastq_filter, filtering_params.mem_part_pmm_fastq_filter);


		filtering_params.kmer_len = config.headers.front().kmer_len;

		vector<thread> readers_ths;
		vector<thread> filters_ths;
		vector<unique_ptr<CWFastqFilter>> filters;
		vector<unique_ptr<CWFastqReaderKMCTools>> readers;

		CKffAndKMCRandomAccess kmc_api;
		if (config.headers.front().GetType() == KmerFileType::KFF1)
			kmc_api.OpenKFF<SIZE>(config.headers.front(), config.input_desc.front());
		else
		{
			if (!kmc_api.OpenKMC(config.input_desc.front().file_src))
			{
				cerr << "Error: cannot open: " << config.input_desc.front().file_src << " by KMC API\n";
				exit(1);
			}
		}
		kmc_api.SetMinCount(config.input_desc.front().cutoff_min);
		kmc_api.SetMaxCount(config.input_desc.front().cutoff_max);

		CWFastqWriter writer(filtering_params, filtering_queues);
		thread writer_th(writer);

		for (uint32 i = 0; i < filtering_params.n_filters; ++i)
		{
			filters.push_back(make_unique<CWFastqFilter>(filtering_params, filtering_queues, kmc_api));
			filters_ths.emplace_back(ref(*filters.back()));
		}

		for (uint32 i = 0; i < filtering_params.n_readers; ++i)
		{
			readers.push_back(make_unique<CWFastqReaderKMCTools>(filtering_params, filtering_queues));
			readers_ths.emplace_back(ref(*readers.back()));
		}

		writer_th.join();
		for (auto& thread : filters_ths)
			thread.join();

		filters.clear();

		for (auto& thread : readers_ths)
			thread.join();

		readers.clear();

		delete filtering_queues.input_part_queue;
		delete filtering_queues.pmm_fastq_reader;
		delete filtering_queues.pmm_fastq_filter;
		delete filtering_queues.input_files_queue;
		delete filtering_queues.filtered_part_queue;

		return true;
	}

	bool simple_set()
	{
		CInput<SIZE> *db1, *db2;

		db1 = db_reader_factory<SIZE>(config.headers[0], config.input_desc[0], KmerDBOpenMode::sorted);
		db2 = db_reader_factory<SIZE>(config.headers[1], config.input_desc[1], KmerDBOpenMode::sorted);
		
		CBundle<SIZE> input1(db1), input2(db2);

		vector<COutputBundle<SIZE>*> output_bundles;
		
		vector<CDbWriter<SIZE>*> writers;

		for (uint32 i = 0; i < config.simple_output_desc.size(); ++i)
		{
			writers.push_back(db_writer_factory<SIZE>(config.simple_output_desc[i]));
			writers.back()->MultiOptputInit();
			output_bundles.push_back(new COutputBundle<SIZE>(config.simple_output_desc[i].op_type, config.simple_output_desc[i].counter_op, *writers.back()));
		}

		CSimpleOperation<SIZE> op(&input1, &input2, output_bundles);
		op.Process();

		for (auto& writer : writers)
		{
			writer->MultiOptputFinish();
			delete writer;
		}

		for (auto o : output_bundles)
			delete o;

		return true;
	}

	bool complex()
	{
		CExpressionNode<SIZE>* expression_root = parameters_parser.GetExpressionRoot<SIZE>();
		auto t = expression_root->GetExecutionRoot();
		delete expression_root;
		auto writer = db_writer_factory<SIZE>(config.output_desc, t);
		writer->Process();
		delete t;
		delete writer;
		return true;
	}

	bool check()
	{
		switch (config.headers.front().GetType())
		{
			case KmerFileType::KMC1:
			case KmerFileType::KMC2:
			{
				CKmerCheck<SIZE> checker(config.headers.front(), config.input_desc.front());
				return checker.CheckKmer();
			}
			case KmerFileType::KFF1:
			{
				CKmerCheckKFF<SIZE> checker(config.headers.front(), config.input_desc.front());
				return checker.CheckKmer();
			}
			default:
			{
				std::cerr << "Error: this should never happen, please contact authors: " << __FILE__ << "\t" << __LINE__ << "\n";
				exit(1);
			}
		}
	}

	bool transform()
	{
		bool kmers_needed = false;
		bool sort_needed = false;

		//remove not valid
		if (config.headers.front().kmer_file_type == KmerFileType::KMC1)
		{
			auto it = config.transform_output_desc.begin();
			while (it != config.transform_output_desc.end())
			{
				if (it->op_type == CTransformOutputDesc::OpType::SORT)
				{
					it = config.transform_output_desc.erase(it);
					cerr << "KMC database is already sorted. Skipping the sort phase." << endl;
					throw KMCAlreadySortedException(); // Jarno N. Alanko
					//cerr << "Warning: input database is already sorted. Each sort operation will be omitted\n";
				}
				else ++it;
			}
		}
		if (!config.transform_output_desc.size())
		{
			return false;
		}


		for (auto& desc : config.transform_output_desc)
		{
			if (desc.op_type == CTransformOutputDesc::OpType::REDUCE || desc.op_type == CTransformOutputDesc::OpType::COMPACT || desc.op_type == CTransformOutputDesc::OpType::SORT || desc.op_type == CTransformOutputDesc::OpType::SET_COUNTS)
			{
				kmers_needed = true;
				sort_needed = true;
				break;
			}
			if (desc.op_type == CTransformOutputDesc::OpType::DUMP)
			{
				kmers_needed = true;
				if (desc.sorted_output)
				{
					sort_needed = true;
					break;
				}
			}
		}

		KmerDBOpenMode open_mode;
		if (!kmers_needed)
			open_mode = KmerDBOpenMode::counters_only;
		else if (sort_needed)
			open_mode = KmerDBOpenMode::sorted;
		else
			open_mode = KmerDBOpenMode::sequential;

		switch (config.headers.front().kmer_file_type)
		{
		case KmerFileType::KMC1:
			ProcessTransformOper<CKMC1DbReader<SIZE>>(open_mode);
			break;
		case KmerFileType::KMC2:
			ProcessTransformOper<CKMC2DbReader<SIZE>>(open_mode);
			break;
		case KmerFileType::KFF1:
			ProcessTransformOper<CKFFDbReader<SIZE>>(open_mode);
			break;
		default:
			{
				std::cerr << "Error: this should never happen, please contact authors: " << __FILE__ << "\t" << __LINE__ << "\n";
				exit(1);
			}		
		}

		return true;
	}

public:
	CTools(CParametersParser& parameters_parser) :
		parameters_parser(parameters_parser),
		config(CConfig::GetInstance())
	{
	}
	bool Process()
	{
		if (config.mode == CConfig::Mode::FILTER)
		{
			return filter();
		}
		else if (config.mode == CConfig::Mode::INFO)
		{
			return info();
		}
		else if (config.mode == CConfig::Mode::COMPARE)
		{
			CInput<SIZE> *db1, *db2;

			db1 = db_reader_factory<SIZE>(config.headers[0], config.input_desc[0], KmerDBOpenMode::sorted);
			db2 = db_reader_factory<SIZE>(config.headers[1], config.input_desc[1], KmerDBOpenMode::sorted);
			
			CBundle<SIZE> input1(db1), input2(db2);
			CComparer<SIZE> comparer(&input1, &input2);

			bool res = comparer.Equals();

			delete db1;
			delete db2; 
			//std::cout << "\n";
			if (res)
			{
				cout << "DB Equals\n";
				exit(0);
			}
			else
			{
				cout << "DB Differs\n";
				exit(1);
			}
		}
		else if (config.mode == CConfig::Mode::TRANSFORM)
		{
			return transform();
		}
		else if (config.mode == CConfig::Mode::SIMPLE_SET)
		{
			return simple_set();
		}
		else if (config.mode == CConfig::Mode::CHECK)
		{
			return check();
		}
		else if(config.mode == CConfig::Mode::COMPLEX)
		{
			return complex();
		}
		else
		{
			//being here means bug
			std::cerr << "Error: unknown mode\n";
			exit(1);
		}
		return false;
	}
};


template<unsigned SIZE> class CApplication
{
	CApplication<SIZE - 1>* app_1;
	CTools<SIZE>* tools;
	bool is_selected;
	CConfig& config;
	CParametersParser& parameter_parser;
public:
	CApplication(CParametersParser& parameter_parser) :
		config(CConfig::GetInstance()), parameter_parser(parameter_parser)
	{
		is_selected = config.kmer_len <= (int32)SIZE * 32 && config.kmer_len > ((int32)SIZE - 1) * 32;

		app_1 = new CApplication<SIZE - 1>(parameter_parser);
		if (is_selected)
		{
			tools = new CTools<SIZE>(parameter_parser);
		}
		else
		{
			tools = nullptr;
		}
	}

	~CApplication()
	{
		delete app_1;
		if (is_selected)
			delete tools;
	}

	bool Process()
	{
		if (is_selected)
			return tools->Process();
		else
			return app_1->Process();
	}
};

template<> class CApplication<1>
{
	CTools<1>* tools;
	CConfig& config;
	CParametersParser& parameter_parser;
	bool is_selected;
public:
	CApplication(CParametersParser& parameter_parser) :
		config(CConfig::GetInstance()), parameter_parser(parameter_parser)
	{
		is_selected = config.kmer_len <= 32;

		if (is_selected)
			tools = new CTools<1>(parameter_parser);
		else
			tools = nullptr;
	}
	~CApplication()
	{
		if (tools)
			delete tools;
	}
	bool Process() {
		if (is_selected)
		{
			return tools->Process();
		}
		return false;
	}
};

}

} // Namespace kmc_interface

namespace sbwt{

using namespace std;
using namespace kmc_tools;

// See header for description
pair<string, int64_t> run_kmc(const vector<string>& input_files, int64_t k, int64_t n_threads, int64_t ram_gigas, int64_t min_abundance, int64_t max_abundance){

    write_log("Running KMC counter", LogLevel::MAJOR);

    string KMC_db_file_prefix = get_temp_file_manager().create_filename("kmers");

    KMC::Stage1Params stage1Params;

    string f = input_files[0]; // First input file
    seq_io::FileFormat format = seq_io::figure_out_file_format(f);

    for(string f2 : input_files){
        seq_io::FileFormat format2 = seq_io::figure_out_file_format(f2);
        if(format.format != format2.format || format.gzipped != format2.gzipped){
            throw std::runtime_error("Error: all input files must have the same format");
        }
    }

    stage1Params.SetInputFiles(input_files)
        .SetKmerLen(k)
        .SetNThreads(n_threads)
        .SetMaxRamGB(ram_gigas)
        .SetInputFileType(format.format == seq_io::FASTA ? KMC::InputFileType::MULTILINE_FASTA : KMC::InputFileType::FASTQ)
        .SetCanonicalKmers(false)
        .SetTmpPath(get_temp_file_manager().get_dir());

    KMC::Runner kmc;

    auto stage1Results = kmc.RunStage1(stage1Params);

    uint32_t ramForStage2 = ram_gigas;
    KMC::Stage2Params stage2Params;
    stage2Params.SetNThreads(n_threads)
        .SetMaxRamGB(ramForStage2)
        .SetCutoffMin(min_abundance)
        .SetCutoffMax(max_abundance)
        .SetOutputFileName(KMC_db_file_prefix)
        .SetStrictMemoryMode(true);

    auto stage2Results = kmc.RunStage2(stage2Params);

    int64_t n_kmers = stage2Results.nUniqueKmers - stage2Results.nBelowCutoffMin - stage2Results.nAboveCutoffMax;

    write_log("Sorting KMC database", LogLevel::MAJOR);

    try{
        sort_kmc_db(KMC_db_file_prefix, KMC_db_file_prefix + "-sorted");
    } catch(kmc_interface::KMCAlreadySortedException& e){
        // Just copy the database
        std::filesystem::copy(KMC_db_file_prefix + ".kmc_pre", KMC_db_file_prefix + "-sorted.kmc_pre");
        std::filesystem::copy(KMC_db_file_prefix + ".kmc_suf", KMC_db_file_prefix + "-sorted.kmc_suf");
    }

    // Delete the unsorted KMC database files. The temp file manager can not do this because
    // KMC appends suffixes to the filename and the manager does not know about that.
    std::filesystem::remove(KMC_db_file_prefix + ".kmc_pre");
    std::filesystem::remove(KMC_db_file_prefix + ".kmc_suf");

    // Clean up the KMC global singleton config state because it seems that it's left
    // in a partial state sometimes, which messes up our code if we call KMC again later.
    CConfig::GetInstance().input_desc.clear();
    CConfig::GetInstance().headers.clear();
    CConfig::GetInstance().simple_output_desc.clear();
    CConfig::GetInstance().transform_output_desc.clear();

    return {KMC_db_file_prefix + "-sorted", n_kmers};
}

void sort_kmc_db(const string& input_db_file, const string& output_db_file){
    vector<string> args = {"kmc_tools", "transform", input_db_file, "sort", output_db_file};
    Argv argv(args);

    CParametersParser params_parser(argv.size, argv.array);
    params_parser.Parse();
    if (params_parser.validate_input_dbs())
    {
        params_parser.SetThreads();
        kmc_interface::CApplication<KMER_WORDS> app(params_parser);
        app.Process();
    }
}

} // Namespace sbwt