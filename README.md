# GTestProjectExample

This is a minimal project showing how to configure CMake C++ project with GTest (Google Test) integration on Windows (with Visual Studio). GTest can be installed anywhere, not in the project directory.

In scripts directory, there are two scripts: **build_gtest.bat** and **generate_project.bat**. The scripts should be called via Developer Command Prompt for VS.

**build_gtest** builds Google Test from source in the desired location. It expects 3 arguments: Visual Studio compiler name, GTest source path (where to clone source from Git) and GTest install path. For example:
```
build_gtest.bat "Visual Studio 15 2017 Win64" C:\Users\Example\googletest\source C:\Users\Example\googletest\install
```

**generate_project** generates Visual Studio project from CMake. It expects 2 arguments: Visual Studio compiler name and GTest install path. For example:
```
generate_project.bat "Visual Studio 15 2017 Win64" C:\Users\Example\googletest\install
```
