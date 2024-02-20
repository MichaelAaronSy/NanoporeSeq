file(REMOVE_RECURSE
  "libkmc_tools.a"
  "libkmc_tools.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/kmc_tools.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
