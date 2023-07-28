set baseBranch="master"

@REM git config --add --bool push.autoSetupRemote true
@REM git add .
@REM git commit -m "c1"
@REM git push
gh pr create --base %baseBranch% -t "c1" -b ""
@REM gh pr merge -m