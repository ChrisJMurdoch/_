# _

A minimalist utility script for managing CMake projects in Windows.

## Usage Description

All commands begin with a:

> _

Different directives can then be chained to perform in sequence:

Directive | Function
:---: | ---
`init` | Generate build system files
`build` | Build project executable
`run-[exe_name]` | Run generated executable
`clean` | Delete all generated files
 
## Example Usage
 
 > _ init build run-app
 
 > _ clean build run-app
 
 > _ build run-app
 
 > _ run-app

 > _ run-app_a run-app_b run-app_c

## Configuration

Certain parameters found in the script itself can be modified to change the behavior of the script:

Parameter | Function
:---: | ---
`BUILD_DIR` | The relative path of the directory in which to generate build files and executables
`BUILD_MODE` | The compile mode to be used for generating the executables (Debug, Release, ...)
