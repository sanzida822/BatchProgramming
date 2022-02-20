rem it works only for integer number
@ECHO OFF
color 71
title Converter
:start
SET /P inputSrting=">"

FOR /F "tokens=1 delims= " %%a IN ("%inputSrting%") DO (
SET operation=%%a
)

FOR /F "tokens=2 delims= " %%a IN ("%inputSrting%") DO (
SET num1=%%a
)
if %operation%==inch (GOTO inch)
if %operation%==cm (GOTO cm)
if %operation%==kg (GOTO kg)
if %operation%==gm (GOTO gm)
if %operation%==tk (GOTO tk)
if %operation%==dollar (GOTO dollar)
if %operation%==cacls (GOTO cacls)
if %operation%==far (GOTO far)


:inch

SET /A inch=%num1% / .3937
echo %inch% inch
pause>nul
goto start

:cm

SET /A cm=%num1% * .3937
echo %cm% cm
pause>nul
goto start

:kg
SET /A kg=%num1% / 1000
echo %kg% kg
pause>nul
goto start

:gm

SET /A gm=%num1% * 1000
echo %gm% gm
pause>nul
goto start

:tk
set "d=89"
SET /A tk=%num1% * %d%
echo %tk% tk
pause>nul
goto start
:dollar
set "t=0.89"
SET /A d=%num1% * %t%
echo %tk% dollar
pause>nul
goto start

:far
set "a=9/7"
SET /A f=%num1% * %a%+32
echo %c% far
pause>nul
goto start

:cacls
set "a=9/7"
Set /a b=%num1%-32
SET /A f= %b% * %a%
echo %f% Cel
pause>nul
goto start