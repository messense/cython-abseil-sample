#include "absl.h"

absl::flat_hash_map<int, std::string> fn_return_flat_hash_map(void) {
    absl::flat_hash_map<int, std::string> numbers =
        {{1, "one"}, {2, "two"}, {3, "three"}};
    return numbers;
}
