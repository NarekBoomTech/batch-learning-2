@echo off

set "updateComponents=true"
set "updateCalendar=true"
set baseBranch="staging"

if "%updateComponents%" == "true" if "%updateCalendar%" == "true" (
    call npm update boom-components boom-calendar
    set commitName=":arrow_up: Update boom-calendar and boom-components"
)

if "%updateComponents%" == "true" if "%updateCalendar%" == "false" (
    call npm update boom-components
    set commitName=":arrow_up: Update boom-components"
)

if "%updateComponents%" == "false" if "%updateCalendar%" == "true" (
    call npm update boom-calendar
    set commitName=":arrow_up: Update boom-calendar"
)

if "%updateComponents%" == "false" if "%updateCalendar%" == "false" (
    echo "Exit"
    exit
)

git config --add --bool push.autoSetupRemote true
git add .
git commit -m %commitName%
git push
gh pr create --base %baseBranch% -t %commitName% -b ""
gh pr merge -m