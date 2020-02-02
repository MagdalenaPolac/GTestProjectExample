set -e
set CALLING_PATH= %cd%
set COMPILER=%1
set GTEST_PATH=%2

cd ..
mkdir build
cd build
cmake -G %COMPILER% -DGTEST_ROOT=%GTEST_PATH% -DBUILD_TESTS=ON ..
devenv GTestProjectExample.sln
cd %CALLING_PATH%