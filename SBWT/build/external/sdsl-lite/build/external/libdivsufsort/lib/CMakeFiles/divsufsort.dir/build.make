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
include external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.make

# Include the progress variables for this target.
include external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/progress.make

# Include the compile flags for this target's objects.
include external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make
external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/divsufsort.c
external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o -MF CMakeFiles/divsufsort.dir/divsufsort.o.d -o CMakeFiles/divsufsort.dir/divsufsort.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/divsufsort.c

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/divsufsort.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/divsufsort.c > CMakeFiles/divsufsort.dir/divsufsort.i

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/divsufsort.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/divsufsort.c -o CMakeFiles/divsufsort.dir/divsufsort.s

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make
external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/sssort.c
external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o -MF CMakeFiles/divsufsort.dir/sssort.o.d -o CMakeFiles/divsufsort.dir/sssort.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/sssort.c

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/sssort.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/sssort.c > CMakeFiles/divsufsort.dir/sssort.i

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/sssort.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/sssort.c -o CMakeFiles/divsufsort.dir/sssort.s

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make
external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/trsort.c
external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o -MF CMakeFiles/divsufsort.dir/trsort.o.d -o CMakeFiles/divsufsort.dir/trsort.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/trsort.c

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/trsort.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/trsort.c > CMakeFiles/divsufsort.dir/trsort.i

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/trsort.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/trsort.c -o CMakeFiles/divsufsort.dir/trsort.s

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/flags.make
external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o: /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/utils.c
external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o -MF CMakeFiles/divsufsort.dir/utils.o.d -o CMakeFiles/divsufsort.dir/utils.o -c /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/utils.c

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/utils.i"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/utils.c > CMakeFiles/divsufsort.dir/utils.i

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/utils.s"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib/utils.c -o CMakeFiles/divsufsort.dir/utils.s

# Object files for target divsufsort
divsufsort_OBJECTS = \
"CMakeFiles/divsufsort.dir/divsufsort.o" \
"CMakeFiles/divsufsort.dir/sssort.o" \
"CMakeFiles/divsufsort.dir/trsort.o" \
"CMakeFiles/divsufsort.dir/utils.o"

# External object files for target divsufsort
divsufsort_EXTERNAL_OBJECTS =

external/sdsl-lite/build/external/libdivsufsort/lib/libdivsufsort.a: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/divsufsort.o
external/sdsl-lite/build/external/libdivsufsort/lib/libdivsufsort.a: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/sssort.o
external/sdsl-lite/build/external/libdivsufsort/lib/libdivsufsort.a: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/trsort.o
external/sdsl-lite/build/external/libdivsufsort/lib/libdivsufsort.a: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/utils.o
external/sdsl-lite/build/external/libdivsufsort/lib/libdivsufsort.a: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/build.make
external/sdsl-lite/build/external/libdivsufsort/lib/libdivsufsort.a: external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libdivsufsort.a"
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && $(CMAKE_COMMAND) -P CMakeFiles/divsufsort.dir/cmake_clean_target.cmake
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/divsufsort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/build: external/sdsl-lite/build/external/libdivsufsort/lib/libdivsufsort.a
.PHONY : external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/build

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/clean:
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib && $(CMAKE_COMMAND) -P CMakeFiles/divsufsort.dir/cmake_clean.cmake
.PHONY : external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/clean

external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/depend:
	cd /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/sdsl-lite/external/libdivsufsort/lib /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib /blue/simone.marini/m.sy/conda/envs/NCBID/bin/SBWT_N/SBWT-kmer-counters/SBWT/build/external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/sdsl-lite/build/external/libdivsufsort/lib/CMakeFiles/divsufsort.dir/depend
