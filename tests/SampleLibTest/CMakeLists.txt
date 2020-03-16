find_package(GTest REQUIRED)

set(target SampleLibTest)
file(GLOB sources *.cpp)

add_executable(${target}
    ${sources}
)

target_link_libraries(${target}
    PRIVATE
    GTest::GTest
    GTest::Main
    SAMPLE_LIB
)

gtest_discover_tests(${target})
