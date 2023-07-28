set baseBranch="staging"

git config --add --bool push.autoSetupRemote true
git add .
git commit -m "c1"
git push
gh pr create --base %baseBranch% -t "c1" -b ""
gh pr merge -m