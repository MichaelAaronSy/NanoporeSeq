file(REMOVE_RECURSE
  "libkmc_core.a"
  "libkmc_core.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/kmc_core.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
