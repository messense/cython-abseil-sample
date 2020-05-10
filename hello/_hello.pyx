from libcpp.string cimport string

from absl cimport flat_hash_map

cdef extern from "absl.h":
    cdef flat_hash_map[int, string] fn_return_flat_hash_map() nogil

cpdef dict hello_absl():
    cdef flat_hash_map[int, string] a_map
    with nogil:
      a_map = fn_return_flat_hash_map()
    return {it.first: it.second.decode() for it in a_map}

cpdef void hello(str strArg):
    "Prints back 'Hello <param>', for example example: hello.hello('you')"
    print("Hello, {}!".format(strArg))

cpdef long elevation():
    "Returns elevation of Nevado Sajama."
    return 21463L
