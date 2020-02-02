set(META_PROJECT_NAME        "GTestProjectExample")
set(META_PROJECT_DESCRIPTION "Minimum project example with GTest installed at specific location")
set(META_AUTHOR_ORGANIZATION "Magdalena Polac")

cmake_minimum_required(VERSION 3.10 FATAL_ERROR)
project(${META_PROJECT_NAME} C CXX)
set(CMAKE_CXX_STANDARD 17)

add_subdirectory(source)

option(BUILD_TESTS "Build tests." ON)
if(BUILD_TESTS)
    enable_testing()
    include(GoogleTest)
    add_subdirectory(tests)
endif()