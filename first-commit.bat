@echo off
echo Initializing Neurodiversity Wiki git repo...

cd /d "%~dp0"

:: Remove the stale lock file if it exists
if exist ".git\config.lock" del ".git\config.lock"

:: Re-init to fix config (safe on existing repo)
git init

:: Set user identity
git config user.name "Julio"
git config user.email "jrkb89@gmail.com"

:: Stage everything
git add .

:: First commit
git commit -m "init: folder structure, schema, raw sources, and first 7 wiki articles"

echo.
echo Done! Your first commit is in.
pause
