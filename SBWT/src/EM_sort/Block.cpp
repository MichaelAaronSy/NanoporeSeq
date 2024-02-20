#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>
#include <vector>
#include <set>
#include <utility>
#include <tuple>
#include <cstring>
#include <cstdio>
#include <functional>
#include "EM_sort/bit_level_stuff.hh"
#include "EM_sort/Block.hh"
#include <cassert>

using namespace std;
using namespace sbwt;

bool sbwt::read_variable_binary_record(seq_io::Buffered_ifstream<>& input, char** buffer, int64_t* buffer_len){
    assert(*buffer_len > 0);
    char rec_len_buf[8];
    int64_t bytes_read = input.read(rec_len_buf, 8); // Try to read the length of the record
    while(bytes_read > 0){
        // Read was successful
        int64_t rec_len = parse_big_endian_LL(rec_len_buf);
        while(*buffer_len < rec_len){ // Make space in the buffer if needed
            *buffer = (char*)realloc(*buffer, *(buffer_len)*2);
            *buffer_len *= 2;
        }
        memcpy(*buffer, rec_len_buf, 8);
        bytes_read = input.read(*buffer + 8, rec_len - 8); // Read the payload
        return true;
    }
    return false;
}

Variable_binary_block* sbwt::get_next_variable_binary_block(seq_io::Buffered_ifstream<>& input, int64_t B){
    int64_t buffer_len = 1024; // MUST HAVE AT LEAST 8 BYTES
    char* buffer = (char*)malloc(buffer_len);
    Variable_binary_block* block = new Variable_binary_block();

    while(read_variable_binary_record(input, &buffer, &buffer_len)){
        block->add_record(buffer);
        if(block->estimate_size_in_bytes() > B) break;
    }

    free(buffer);
    return block;
}

Constant_binary_block* sbwt::get_next_constant_binary_block(seq_io::Buffered_ifstream<>& input, int64_t B, int64_t record_size){
    Constant_binary_block* block = new Constant_binary_block(record_size);
    char* buf = (char*)malloc(record_size);
    while(true){
        if(input.read(buf, record_size) == 0) break; // end of file
        block->add_record(buf);
        if(block->estimate_size_in_bytes() > B) break;
    }

    free(buf);
    return block;
}
