
:: Utility script for managing CMake projects
:: Chris Murdoch, 2023

@echo off
echo.

SETLOCAL

:: // ===== Project configurations

set "BUILD_DIR=_"
set "BUILD_MODE=Debug"

:: \\ =====

REM Get task argument
set "task=%1"

REM Extract executable specifier if exists
set "executable=%task:~4%"

REM Generate project buildsystem
if "%task%"=="init" (
    cmake -B ./%BUILD_DIR%/ || (exit /b 1)

REM Use CMake to build the project
) else if "%task%"=="build" (
    if exist ".\%BUILD_DIR%\" (
        cmake --build ./%BUILD_DIR%/ --config %BUILD_MODE% || (exit /b 1)
    ) else (
        echo No buildsystem found.  Use _ init to generate buildsystem first.
    )

REM Clean all cmake data
) else if "%task%"=="clean" (
    if exist ".\%BUILD_DIR%\" (
        rd /S /Q ".\%BUILD_DIR%\" || (exit /b 1)
    )
    echo cleaned

REM Run the debug executable
) else if "%task:~0,3%"=="run" (
    if exist ".\%BUILD_DIR%\%BUILD_MODE%\%executable%.exe" (
        .\%BUILD_DIR%\%BUILD_MODE%\%executable%.exe || (exit /b 1)
    ) else (
        echo Executable '%executable%' found.  Use _ build to generate executable first.
    )

REM Unrecognised task
) else (
    echo Task '%task%' not recognised
)

ENDLOCAL

REM Chain up to 9 tasks
if NOT "%2"=="" (
    .\_ %2 %3 %4 %5 %6 %7 %8 %9
)
