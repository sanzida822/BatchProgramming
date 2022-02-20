@Echo off
rem set /p command=
Echo sanzida Sultana Nitu
Echo sanzidasultana822@gmail.com
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
echo %mydate%   %mytime%
pause 