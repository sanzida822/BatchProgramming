@echo off
color 71
@setlocal EnableDelayedExpansion EnableExtensions
:begin
set /p string=">"
for /f "tokens=1 delims= " %%a in ("%string%") Do (
   set operation=%%a
   )
for /f "tokens=2 delims= " %%a in ("%string%") Do (
   set method=%%a
   )
 for /f "tokens=3 delims= " %%a in ("%string%") Do (
   set person=%%a
   )
 for /f "tokens=4 delims= " %%a in ("%string%") Do (
   set phone=%%a
   )
for /f "tokens=5 delims= " %%a in ("%string%") Do (
   set file=%%a
   )
if %operation%==pb (goto begin2) else (echo pb  method   person   phone  phonebook )
 
pause
goto begin

:begin2
if %method%==lu (goto lookup) 
if %method%==add (goto add)   
if %method%==sub (goto remove)   else (echo methods are lu,add,sub)
goto begin


:lookup
find "%person%" %file%
pause
goto begin

:add
echo.
echo %person% %phone% >>%file%
pause
goto begin

:remove
findstr /v "%person%" %file% >> newFile.txt
del %file%
copy newFile.txt %file%
del newFile.txt
pause
goto begin