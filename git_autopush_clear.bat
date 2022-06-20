@echo off
for /f "tokens=1,2,3 delims=/- " %%a in ("%date%") do @set D=%%a%%b%%c
git checkout --orphan new_branch
git add .
git commit -a -m %date:~0,10%
git branch -D master
git branch -m master
git push -f origin master

echo deploy_clear success~~