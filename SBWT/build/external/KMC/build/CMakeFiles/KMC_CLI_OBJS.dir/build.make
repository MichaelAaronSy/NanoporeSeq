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
include external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/compiler_depend.make

# Include the progress variables for this target.
include external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/progress.make

# Include the compile flags for this target's objects.
include external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/flags.make

external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.o: external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/flags.make
external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_CLI/kmc.cpp
external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.o: external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.o -MF CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.o.d -o CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_CLI/kmc.cpp

external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_CLI/kmc.cpp > CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.i

external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC/kmc_CLI/kmc.cpp -o CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.s

KMC_CLI_OBJS: external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/kmc_CLI/kmc.cpp.o
KMC_CLI_OBJS: external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/build.make
.PHONY : KMC_CLI_OBJS

# Rule to build all files generated by this target.
external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/build: KMC_CLI_OBJS
.PHONY : external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/build

external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/clean:
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build && $(CMAKE_COMMAND) -P CMakeFiles/KMC_CLI_OBJS.dir/cmake_clean.cmake
.PHONY : external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/clean

external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/depend:
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/KMC /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/KMC/build/CMakeFiles/KMC_CLI_OBJS.dir/depend
