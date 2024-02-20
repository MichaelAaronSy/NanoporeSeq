# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /apps/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /apps/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build

# Include any dependencies generated for this target.
include external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.make

# Include the progress variables for this target.
include external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/progress.make

# Include the compile flags for this target's objects.
include external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kmer_file_header.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kmer_file_header.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kmer_file_header.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kmer_file_header.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kmc_tools.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kmc_tools.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kmc_tools.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kmc_tools.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/nc_utils.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/nc_utils.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/nc_utils.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/nc_utils.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/parameters_parser.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/parameters_parser.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/parameters_parser.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/parameters_parser.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/parser.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/parser.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/parser.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/parser.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/tokenizer.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/tokenizer.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/tokenizer.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/tokenizer.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_filter.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_filter.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_filter.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_filter.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_reader.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_reader.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_reader.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_reader.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_writer.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_writer.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_writer.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/fastq_writer.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/percent_progress.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/percent_progress.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/percent_progress.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/percent_progress.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kff_info_reader.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kff_info_reader.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kff_info_reader.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_tools/kff_info_reader.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/mmer.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/mmer.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/mmer.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/mmer.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/kmc_file.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/kmc_file.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/kmc_file.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/kmc_file.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.s

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/kmer_api.cpp
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.o: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.o -MF CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.o.d -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/kmer_api.cpp

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/kmer_api.cpp > CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.i

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_api/kmer_api.cpp -o CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.s

KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmer_file_header.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kmc_tools.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/nc_utils.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parameters_parser.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/parser.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/tokenizer.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_filter.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_reader.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/fastq_writer.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/percent_progress.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_tools/kff_info_reader.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/mmer.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmc_file.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/kmc_api/kmer_api.cpp.o
KMC_TOOLS_OBJS: external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/build.make
.PHONY : KMC_TOOLS_OBJS

# Rule to build all files generated by this target.
external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/build: KMC_TOOLS_OBJS
.PHONY : external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/build

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/clean:
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && $(CMAKE_COMMAND) -P CMakeFiles/KMC_TOOLS_OBJS.dir/cmake_clean.cmake
.PHONY : external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/clean

external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/depend:
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/KMC/build/CMakeFiles/KMC_TOOLS_OBJS.dir/depend

