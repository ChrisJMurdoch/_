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
`run` | Run generated executable (requires APP_NAME to be set in script)
`clean` | Delete all generated files
 
## Example Usage
 
 > _ init build run
 
 > _ clean build run
 
 > _ build run
 
 > _ run
