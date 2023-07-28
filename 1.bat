d:\Narek-files\BoomTech\Calendar-Platform\github.bat@echo off

@REM set "updateComponents=true"
@REM set "updateCalendar=true"
@REM set baseBranch="staging"

@REM if "%updateComponents%" == "true" if "%updateCalendar%" == "true" (
@REM     call npm update boom-components boom-calendar
@REM     set commitName=":arrow_up: Update boom-calendar and boom-components"
@REM )

@REM if "%updateComponents%" == "true" if "%updateCalendar%" == "false" (
@REM     call npm update boom-components
@REM     set commitName=":arrow_up: Update boom-components"
@REM )

@REM if "%updateComponents%" == "false" if "%updateCalendar%" == "true" (
@REM     call npm update boom-calendar
@REM     set commitName=":arrow_up: Update boom-calendar"
@REM )

@REM if "%updateComponents%" == "false" if "%updateCalendar%" == "false" (
@REM     echo "Exit"
@REM     exit
@REM )

git config --add --bool push.autoSetupRemote true
git add .
git commit -m "commit 1"
git push
gh pr create --base h1 -t "commit 1" -b ""
gh pr merge -m