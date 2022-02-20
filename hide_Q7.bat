@ECHO OFF
title Hide or make visible a file
set /p input=

for /f "tokens=3 delims= " %%a in ("%input%") Do (
set filename=%%a

)
for /f "tokens=2 delims= " %%a in ("%input%") Do (
set operation=%%a

)
if %operation%==+ goto hide
if %operation%==- goto unhide

:hide
attrib +r +h +s %filename%
echo %filename% is made hidden
pause
exit

:unhide
attrib -r -h -s %filename%
echo %filename% is made visible
pause

