git submodule update --init --remote

git clone https://github.com/Microsoft/vcpkg.git %~dp0vcpkg
call %~dp0\vcpkg\bootstrap-vcpkg.bat

cd %~dp0\code\
cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=%~dp0\vcpkg\scripts\buildsystems\vcpkg.cmake

@echo off
echo. 
echo.
echo Done

pause