@echo off
@setlocal EnableDelayedExpansion EnableExtensions
set /p input=

IF %input%==me goto information
pause
exit
:information
echo Sanzida Sultana
echo sanzidasultana822@gmail.com
echo %date%
pause
exit
