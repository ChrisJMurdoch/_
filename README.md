# _

A minimalist utility script for managing CMake projects in Windows.

## Usage Description

All commands begin with a:

> _

Different directives can then be chained to perform in sequence:

Directive | Function
:---: | ---
`init` | Generate buildsystem files
`build` | Build project executable
`run-[executable_name]` | Run generated executable
`clean` | Delete all generated files
 
## Example Usage
 
 > _ init build run-App
 
 > _ clean build run-App
 
 > _ build run-App
 
 > _ run-App

 > _ run-App_A run-App_B run-App_C
