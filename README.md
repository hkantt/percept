<div align="center">

[![preview](https://github.com/user-attachments/assets/f2b0e650-4ded-4c9e-9537-1aa70189a3d0)](#readme)

</div>

# Percept
Percept is a Python library for multimedia applications powered by GLFW, ImGui, and OpenAL Soft.

## Build Instructions
- Make sure you have installed Python 3.11+ on your Windows machine
- Install the latest pybind11 module via `pip install pybind11`
- Open the `percept/` directory through the Visual Studio Developer Command Prompt
- Run build.bat
- Copy `release/percept.pyd` and use it in your projects
- Inclusion of the LICENSE would be highly appreciated

## Documentation
In progress

## Licenses
Percept bundles trimmed or modified versions of several open-source libraries. License files for each are included in the `external/` directory:

- GLFW (zlib/libpng)
- Dear ImGui (MIT)
- glad (Public Domain / MIT)
- OpenAL Soft (LGPL)

## Additional Notes
- Currently, the builds are targeted for Windows 64-bit systems only.
- Parts of the ImGui bindings were created with the assistance of AI tools. As a result, some features pertaining to ImGui may not yet be thoroughly tested.
- Linux build support is untested.
