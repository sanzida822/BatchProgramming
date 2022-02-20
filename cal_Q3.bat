@echo off
:begin

set /p input=
for /f "tokens=1 delims= " %%a in ("%input%") Do (
set operator=%%a

)
for /f "tokens=2 delims= " %%a in ("%input%") Do (
set operand1=%%a

)
for /f "tokens=3 delims= " %%a in ("%input%") Do (
set operand2=%%a

)

if "%operator%" == "add" goto sum
if "%operator%" == "sub" goto sub
if "%operator%" == "mul" goto mul
if "%operator%" == "pow" goto pow  
if "%operator%" == "div" goto div  


:sum
set /a summation = %operand1% + %operand2%
echo %summation%
goto begin

:sub
set /a substraction= %operand1% - %operand2%
echo %substraction%
goto begin

:mul
set /a multiplication= %operand1% * %operand2%
echo %multiplication%
goto begin

:pow
SET x=%operand1%
SET n=%operand2%
SET result=1
FOR /L %%i IN (1,1,%n%) DO SET /A result*=x
ECHO %result%
goto begin


:div
set /a divition= %operand1% / %operand2%
echo %divition%
goto begin

pause