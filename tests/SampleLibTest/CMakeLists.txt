find_package(GTest REQUIRED)

set(target SampleLibTest)
file(GLOB sources *.cpp)

add_executable(${target}
    ${sources}
)

target_link_libraries(${target}
    PRIVATE
    ${GTEST_BOTH_LIBRARIES}
    SAMPLE_LIB
)

target_include_directories(${target}
    PRIVATE
    ${GTEST_INCLUDE_DIRS}
)

gtest_discover_tests(${target})