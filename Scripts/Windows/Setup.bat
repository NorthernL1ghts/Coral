@echo off

cd ..\..\

REM Use the correct path to the premake executable
vendor\bin\premake\premake5.exe vs2022 --file=premake5-native.lua
vendor\bin\premake\premake5.exe vs2022 --file=premake5-managed.lua

cd .\Scripts\Windows\

PAUSE