# Coral

![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20Linux-lightgrey.svg)
![C++ Version](https://img.shields.io/badge/C%2B%2B-20-blue.svg)
![Visual Studio](https://img.shields.io/badge/Visual%20Studio-2022-blue.svg)
![Clang Version](https://img.shields.io/badge/Clang-16%2B-blue.svg)

Coral is a C++ wrapper around the .NET HostFXR library. The purpose of Coral is to provide an interface similar to [Mono](https://www.mono-project.com/) for C++/C# interop but in a more modern style and using .NET Core instead of .NET Framework.

The goal of the API is to keep it as simple and flexible as possible while remaining fast and (relatively) safe.

## Supported Platforms

-   Windows x64 (VS2022)
-   Linux x64 (Last tested on Ubuntu 22.04)

## Compiling

Coral has been tested to compile with MSVC / CL (Visual Studio 2022) and Clang 16+. It uses C++20 and depends on the .NET SDK being present on the system.

## Additional Requirements

-   Download and install [Visual Studio 2022](https://visualstudio.microsoft.com/downloads/).
-   Ensure that the .NET SDK is present on your system. You can download it from the official [Microsoft website](https://dotnet.microsoft.com/download).

## Building

Coral uses the [premake](https://premake.github.io/) meta-build system to generate build files for other build systems (e.g., Visual Studio Solutions, Makefiles, etc.).

1. Download premake from [here](https://premake.github.io/).
2. Open a terminal and navigate to the root directory of Coral.
3. Run the following command:

    ````sh
    premake5 [action]
    ```d

    where `action` is one of the supported actions in premake.
    ````

## Scripts

To make the build process easier, Coral includes scripts for both Linux and Windows:

-   **Linux:** Run the `Setup.sh` script located in the `Scripts/Linux` directory.

    ```sh
    ./Scripts/Linux/Setup.sh
    ```

-   **Windows:** Run the `Setup.bat` script located in the `Scripts/Windows` directory.

    ```sh
    .\Scripts\Windows\Setup.bat
    ```

### Build Script

After running the `Setup.bat` or `Setup.sh`, you can build the project using:

-   **Windows:** Run the `Build.bat` script located in the `Scripts/Windows` directory.

    ```sh
    .\Scripts\Windows\Build.bat
    ```

-   **Linux:** Run the `Build.sh` script located in the `Scripts/Linux` directory.

    ```sh
    ./Scripts/Linux/Build.sh
    ```

## Issues

If you encounter any issues, please report them in the [Issues section](https://github.com/NorthernL1ghts/Coral/issues) of the project repository.

## License

Coral is licensed under the MIT license.
