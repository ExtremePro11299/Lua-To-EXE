@echo off
title Compiler
if %errorLevel% == 0 (
  cd /d "%~dp0"
)
:q
cls
echo Compiling...
glue.exe srlua.exe input.lua output.exe
echo.
echo Finished.
echo Press 1 to refresh input.lua and compile again
echo Press any other key to exit
set /p opt=
if %opt%==1 goto q
exit