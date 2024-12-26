#!/bin/bash

cd ../../

# Use the correct path to the premake executable
vendor/bin/premake/premake5 gmake2 --file=premake5-native.lua
vendor/bin/premake/premake5 vs2022 --file=premake5-managed.lua

# Pause and wait
read -p "Press any key to continue..."

# Build the project using all but one CPU core
make -j$(($(nproc) - 1))

# Pause and wait
read -p "Press any key to continue..."

# Build the .NET solution
dotnet build CoralManaged.sln

# Pause and wait
read -p "Press any key to continue..."

cd ./Scripts/Linux/
