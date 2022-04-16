@echo off
set file=
for %%f in (..\..\*.ps1) do (
    set file=%%f
)

mkdir C:\Windows\Aliases
cd C:\Windows\Aliases
copy macros.doskey
echo %RETVAL% > macros.doskey

CALL :NORMALIZEPATH %file%
echo powershell %RETVAL% > "command.txt"
doskey gsh=%RETVAL%

:: ============= FUNCTIONS =====================
:NORMALIZEPATH
    SET RETVAL=%~f1
    EXIT /B