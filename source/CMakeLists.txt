set(target main)

add_executable (${target}
    main.cpp)

target_link_libraries (${target} 
    SAMPLE_LIB)

add_subdirectory(SampleLib)