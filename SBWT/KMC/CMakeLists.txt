cmake_minimum_required(VERSION 3.1)
project(KMC VERSION 1.0
  DESCRIPTION "SBWT fork of KMC"
  LANGUAGES CXX)

find_package(Git QUIET)
if(GIT_FOUND AND EXISTS "${PROJECT_SOURCE_DIR}/.git")
  option(GIT_SUBMODULE "Check submodules during build" ON)
  if(GIT_SUBMODULE)
    message(STATUS "Submodule update")
    execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
      WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
      RESULT_VARIABLE GIT_SUBMOD_RESULT)
    if(NOT GIT_SUBMOD_RESULT EQUAL "0")
      message(FATAL_ERROR "git submodule update --init --recursive failed with ${GIT_SUBMOD_RESULT}, please checkout submodules")
    endif()
  endif()
endif()

if(NOT ZLIB)
  find_library(ZLIB NAMES z PATHS ${CMAKE_CURRENT_SOURCE_DIR}/kmc_tools/libs/ REQUIRED)
endif()

set(KMC_MAIN_DIR ${CMAKE_CURRENT_SOURCE_DIR}/kmc_core)
set(KMC_CLI_DIR ${CMAKE_CURRENT_SOURCE_DIR}/kmc_CLI)
set(KMC_API_DIR ${CMAKE_CURRENT_SOURCE_DIR}/kmc_api)
set(KMC_TOOLS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/kmc_tools)

if(APPLE)
  if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm64")
    add_library(RADULS_NEON_OBJS OBJECT ${KMC_MAIN_DIR}/raduls_neon.cpp)
    target_compile_options(RADULS_NEON_OBJS PRIVATE -march=armv8-a -O3 -static-libgcc -static-libstdc++ -pthread -std=c++14)
  else()
    add_library(RADULS_SSE2_OBJS OBJECT ${KMC_MAIN_DIR}/raduls_sse2.cpp)
    target_compile_options(RADULS_SSE2_OBJS PRIVATE -msse2 -O3 -m64 -static-libgcc -static-libstdc++ -pthread -std=c++14)

    add_library(RADULS_SSE41_OBJS OBJECT ${KMC_MAIN_DIR}/raduls_sse41.cpp)
    target_compile_options(RADULS_SSE41_OBJS PRIVATE -msse4.1 -O3 -m64 -static-libgcc -static-libstdc++ -pthread -std=c++14)

    add_library(RADULS_AVX_OBJS OBJECT ${KMC_MAIN_DIR}/raduls_avx.cpp)
    target_compile_options(RADULS_AVX_OBJS PRIVATE -mavx -O3 -m64 -static-libgcc -static-libstdc++ -pthread -std=c++14)

    add_library(RADULS_AVX2_OBJS OBJECT ${KMC_MAIN_DIR}/raduls_avx2.cpp)
    target_compile_options(RADULS_AVX2_OBJS PRIVATE -mavx2 -O3 -m64 -static-libgcc -static-libstdc++ -pthread -std=c++14)
  endif()
else()
  add_library(RADULS_SSE2_OBJS OBJECT ${KMC_MAIN_DIR}/raduls_sse2.cpp)
  target_compile_options(RADULS_SSE2_OBJS PRIVATE -msse2 -O3 -m64 -static -Wl,--whole-archive -lpthread -Wl,--no-whole-archive -std=c++14)

  add_library(RADULS_SSE41_OBJS OBJECT ${KMC_MAIN_DIR}/raduls_sse41.cpp)
  target_compile_options(RADULS_SSE41_OBJS PRIVATE -msse4.1 -O3 -m64 -static -Wl,--whole-archive -lpthread -Wl,--no-whole-archive -std=c++14)

  add_library(RADULS_AVX_OBJS OBJECT ${KMC_MAIN_DIR}/raduls_avx.cpp)
  target_compile_options(RADULS_AVX_OBJS PRIVATE -mavx -O3 -O3 -m64 -static -Wl,--whole-archive -lpthread -Wl,--no-whole-archive -std=c++14)

  add_library(RADULS_AVX2_OBJS OBJECT ${KMC_MAIN_DIR}/raduls_avx2.cpp)
  target_compile_options(RADULS_AVX2_OBJS PRIVATE -mavx2 -O3 -m64 -static -Wl,--whole-archive -lpthread -Wl,--no-whole-archive -std=c++14)
endif()

# KKMC CLI OBJECTS

add_library(KMC_CLI_OBJS OBJECT ${KMC_CLI_DIR}/kmc.cpp)

# KFF OBJECTS

add_library(KFF_OBJS OBJECT ${KMC_MAIN_DIR}/kff_writer.cpp)

# KMC API OBJECTS

add_library(KMC_API_OBJS OBJECT
  ${KMC_API_DIR}/mmer.cpp
  ${KMC_API_DIR}/kmc_file.cpp
  ${KMC_API_DIR}/kmer_api.cpp)

# KMC CORE OBJECTS

add_library(KMC_CORE_OBJS OBJECT
  ${KMC_MAIN_DIR}/mem_disk_file.cpp
  ${KMC_MAIN_DIR}/rev_byte.cpp
  ${KMC_MAIN_DIR}/bkb_writer.cpp
  ${KMC_MAIN_DIR}/cpu_info.cpp
  ${KMC_MAIN_DIR}/bkb_reader.cpp
  ${KMC_MAIN_DIR}/fastq_reader.cpp
  ${KMC_MAIN_DIR}/timer.cpp
  ${KMC_MAIN_DIR}/develop.cpp
  ${KMC_MAIN_DIR}/kb_completer.cpp
  ${KMC_MAIN_DIR}/kb_storer.cpp
  ${KMC_MAIN_DIR}/kmer.cpp
  ${KMC_MAIN_DIR}/splitter.cpp
  ${KMC_MAIN_DIR}/kb_collector.cpp
  ${KMC_MAIN_DIR}/kmc_runner.cpp)

# KMC TOOLS OBJECTS

add_library(KMC_TOOLS_OBJS OBJECT
  ${KMC_TOOLS_DIR}/kmer_file_header.cpp
  ${KMC_TOOLS_DIR}/kmc_tools.cpp
  ${KMC_TOOLS_DIR}/nc_utils.cpp
  ${KMC_TOOLS_DIR}/parameters_parser.cpp
  ${KMC_TOOLS_DIR}/parser.cpp
  ${KMC_TOOLS_DIR}/tokenizer.cpp
  ${KMC_TOOLS_DIR}/fastq_filter.cpp
  ${KMC_TOOLS_DIR}/fastq_reader.cpp
  ${KMC_TOOLS_DIR}/fastq_writer.cpp
  ${KMC_TOOLS_DIR}/percent_progress.cpp
  ${KMC_TOOLS_DIR}/kff_info_reader.cpp
  ${KMC_API_DIR}/mmer.cpp
  ${KMC_API_DIR}/kmc_file.cpp
  ${KMC_API_DIR}/kmer_api.cpp)

# KMC CORE

if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm64")
  add_library(kmc_core STATIC
    $<TARGET_OBJECTS:KMC_CORE_OBJS>
    $<TARGET_OBJECTS:KMC_API_OBJS>
    $<TARGET_OBJECTS:KFF_OBJS>
    $<TARGET_OBJECTS:RADULS_NEON_OBJS>)
else()
  add_library(kmc_core STATIC
    $<TARGET_OBJECTS:KMC_CORE_OBJS>
    $<TARGET_OBJECTS:KMC_API_OBJS>
    $<TARGET_OBJECTS:KFF_OBJS>
    $<TARGET_OBJECTS:RADULS_SSE2_OBJS>
    $<TARGET_OBJECTS:RADULS_SSE41_OBJS>
    $<TARGET_OBJECTS:RADULS_AVX_OBJS>
    $<TARGET_OBJECTS:RADULS_AVX2_OBJS>)
endif()

if(APPLE)
  if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm64")
    target_compile_options(kmc_core PRIVATE -O3 -static-libgcc -static-libstdc++ -pthread -std=c++14)
    target_link_libraries(kmc_core PRIVATE
      ${ZLIB}
      ${BZIP2})
    target_link_options(kmc_core PRIVATE -lm -static-libgcc -static-libstdc++ -O3 -pthread -std=c++14)
  else()
    target_compile_options(kmc_core PRIVATE -O3 -m64 -static-libgcc -static-libstdc++ -pthread -std=c++14)
    target_link_libraries(kmc_core PRIVATE
      ${ZLIB}
      ${BZIP2})
    target_link_options(kmc_core PRIVATE -lm -static-libgcc -static-libstdc++ -O3 -pthread -std=c++14)
  endif()
else()
  target_compile_options(kmc_core PRIVATE -O3 -m64 -static -Wl,--whole-archive -lpthread -Wl,--no-whole-archive -std=c++14)
  target_link_libraries(kmc_core PRIVATE
    ${ZLIB})

  target_link_options(kmc_core PRIVATE -lm -static -O3 -Wl,--whole-archive -lpthread -Wl,--no-whole-archive -std=c++14)
endif()

# KMC TOOLS

add_library(kmc_tools STATIC
  $<TARGET_OBJECTS:KMC_TOOLS_OBJS>
  $<TARGET_OBJECTS:KMC_API_OBJS>
  $<TARGET_OBJECTS:KFF_OBJS>)

if(APPLE)
  if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm64")
    target_compile_options(kmc_tools PRIVATE -O3 -static-libgcc -static-libstdc++ -pthread -std=c++14)
    target_link_libraries(kmc_tools PRIVATE
      ${ZLIB}
      ${BZIP2})
    target_link_options(kmc_tools PRIVATE -lm -static-libgcc -static-libstdc++ -O3 -pthread -std=c++14)
  else()
    target_compile_options(kmc_tools PRIVATE -O3 -m64 -static-libgcc -static-libstdc++ -pthread -std=c++14)
    target_link_libraries(kmc_tools PRIVATE
      ${ZLIB}
      ${BZIP2})
    target_link_options(kmc_tools PRIVATE -lm -static-libgcc -static-libstdc++ -O3 -pthread -std=c++14)
  endif()
else()
  target_compile_options(kmc_tools PRIVATE -O3 -m64 -static -Wl,--whole-archive -lpthread -Wl,--no-whole-archive -std=c++14)
  target_link_libraries(kmc_tools PRIVATE
    ${ZLIB})
  target_link_options(kmc_tools PRIVATE -lm -static -O3 -Wl,--whole-archive -lpthread -Wl,--no-whole-archive -std=c++14)
endif()
