
:: Utility script for managing CMake projects
:: Chris Murdoch, 2022

@echo off
echo.

set "APP_NAME=Your_CMake_app_name_here"
set "BUILD_DIR=_"

REM Generate project buildsystem
if "%1"=="init" (
    cmake -B ./%BUILD_DIR%/

REM Use CMake to build the project
) else if "%1"=="build" (
    if exist ".\%BUILD_DIR%\Debug\%APP_NAME%.exe" (
        del /Q ".\%BUILD_DIR%\Debug\%APP_NAME%.exe"
    )
    if exist ".\%BUILD_DIR%\" (
        cmake --build ./%BUILD_DIR%/
    ) else (
        echo No buildsystem found.  Use _ init to generate buildsystem first.
    )

REM Clean all cmake data
) else if "%1"=="clean" (
    if exist ".\%BUILD_DIR%\" (
        rd /S /Q ".\%BUILD_DIR%\"
    )
    echo cleaned

REM Run the debug executable
) else if "%1"=="run" (
    if exist ".\%BUILD_DIR%\Debug\%APP_NAME%.exe" (
        .\%BUILD_DIR%\Debug\%APP_NAME%.exe
    ) else (
        echo No executable found.  Use _ build to generate executable first.
    )

REM Unrecognised task
) else (
    echo Task '%1' not found
)

REM Chain up to 9 tasks
if NOT "%2"=="" (
    .\_ %2 %3 %4 %5 %6 %7 %8 %9
)
