#!/bin/bash

cd ../../

# Use the correct path to the premake executable
vendor/bin/premake/premake5 gmake2 --file=premake5-native.lua
vendor/bin/premake/premake5 vs2022 --file=premake5-managed.lua

# Build the project using all but one CPU core
make -j$(($(nproc) - 1))

# Build the .NET solution
dotnet build CoralManaged.sln

cd ./Scripts/Linux/
