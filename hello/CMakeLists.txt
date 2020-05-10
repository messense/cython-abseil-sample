
if(SKBUILD)
  message(STATUS "The project is built using scikit-build")
  find_package(PythonExtensions REQUIRED)
  find_package(Cython REQUIRED)

  include_directories(
    /usr/local/include
    ${PYTHON_INCLUDE_DIRS}
    ${CMAKE_CURRENT_SOURCE_DIR}/vendor/abseil-cpp)

  add_cython_target(_hello CXX)
  add_library(_hello MODULE ${_hello})
  target_link_libraries(_hello hello_absl)
  python_extension_module(_hello)

  install(TARGETS _hello LIBRARY DESTINATION hello)
endif()
