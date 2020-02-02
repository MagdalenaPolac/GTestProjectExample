set CALLING_PATH= %cd%
set COMPILER=%1
set SOURCE_PATH=%2
set INSTALL_PATH=%3

set GTEST_VERSION=release-1.10.0

cd %SOURCE_PATH%
git clone https://github.com/google/googletest.git googletest
cd googletest
git checkout %GTEST_VERSION%
mkdir BUILD-%GTEST_VERSION%-vs
cd BUILD-%GTEST_VERSION%-vs
cmake -G %COMPILER% -DCMAKE_INSTALL_PREFIX=%INSTALL_PATH% -Dgtest_force_shared_crt=ON ..
msbuild INSTALL.vcxproj /p:Configuration=Debug
msbuild INSTALL.vcxproj /p:Configuration=Release
cd %CALLING_PATH%