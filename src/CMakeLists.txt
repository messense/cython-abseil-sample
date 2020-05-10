
set(SOURCES absl.cc)
add_library(hello_absl STATIC ${SOURCES})
target_link_libraries(hello_absl absl::flat_hash_map)
