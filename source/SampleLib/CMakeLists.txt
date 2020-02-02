set(target 
    SAMPLE_LIB)

set(target_source
    SampleClass.hpp
    SampleClass.cpp
)

add_library(${target} STATIC
    ${target_source}
)

target_link_libraries(${target}
)

# Include directories exported by this library
target_include_directories(${target} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)