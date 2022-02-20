@echo off
:start
set /p input=%cd%\
for /f "tokens=1 delims= " %%d in ("%input%") do (
set command=%%d
)
for /f "tokens=2 delims= " %%d in ("%input%") do (
set variable=%%d
)
for /f "tokens=3 delims= " %%d in ("%input%") do (
set path=%%d
)
if %command% == man ( goto man)
if %command% == p ( goto print)
if %command% == c ( goto cp)
if %command% == X ( goto mv)
if %command% == f ( goto fnd)
if %command% == cat ( goto cat)
if %command% == ls ( goto ls)
:man
help %variable%
goto start
:print
echo %variable%
goto start
:cp
copy %variable% %path%
goto start
:mv
move %variable% %path%
goto start

:fnd
find "%variable%" %path%
goto start

:cat
type %variable%
goto start

:ls
dir
goto start