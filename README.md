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
 
 > _ init build run-app
 
 > _ clean build run-app
 
 > _ build run-app
 
 > _ run-app

 > _ run-app_a run-app_b run-app_c
