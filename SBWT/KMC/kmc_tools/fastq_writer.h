/*
  This file is a part of KMC software distributed under GNU GPL 3 licence.
  The homepage of the KMC project is http://sun.aei.polsl.pl/kmc
  
  Authors: Marek Kokot
  
  Version: 3.2.2
  Date   : 2023-03-10
*/

#ifndef _FASTQ_WRITER_H
#define _FASTQ_WRITER_H

#include "defs.h"
#include "config.h"
#include "queues.h"
#include <string>

namespace kmc_tools{

//************************************************************************************************************
// CFastqWriter - Writer of fastq/fasta file
//************************************************************************************************************
class CFastqWriter
{
	std::string output_src;
	CPartQueue* filtered_part_queue;
	CMemoryPool *pmm_fastq_filter;
public:
	CFastqWriter(CFilteringParams& Params, CFilteringQueues& Queues);
	void Process();
};

//************************************************************************************************************
// CWFastqWriter - wrapper for CFastqWriter class - for multithreading purposes
//************************************************************************************************************
class CWFastqWriter
{
	CFastqWriter writer;
public:
	CWFastqWriter(CFilteringParams& Params, CFilteringQueues& Queues);
	void operator()();
};

} // namespace

#endif

