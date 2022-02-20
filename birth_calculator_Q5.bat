@echo off
color 71
Title age calculator
:start
set /p input=%cd%\
for /f "tokens=2 delims= " %%d in ("%input%") do (
set birthDate=%%d
)
for /f "tokens=1 delims=/" %%d in ("%birthDate%") do (
set year=%%d
)
for /f "tokens=2 delims=/" %%d in ("%birthDate%") do (
set month=%%d
)
for /f "tokens=3 delims=/" %%d in ("%birthDate%") do (
set day=%%d
)
for /f "tokens=2 delims= " %%d in ("%date%") do (
set currentDate=%%d
)
for /f "tokens=1 delims=/" %%d in ("%currentDate%") do (
set currentMonth=%%d
)
for /f "tokens=2 delims=/" %%d in ("%currentDate%") do (
set currentDay=%%d
)
for /f "tokens=3 delims=/" %%d in ("%currentDate%") do (
set currYear=%%d
)
set /a resultDay=%currentDay% - %day%
set /a resultMonth=%currentMonth% - %month%
set /a resultYear=%currYear% - %year%

echo %resultYear% years %resultMonth% months %resultDay% days
pause