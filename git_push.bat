@echo off
chcp 65001 >nul
title Git Auto-Commit and Push

echo ========================================
echo    Git Auto-Commit and Push
echo ========================================
echo.

:: 执行 Git 操作
git add .
git commit -m "one click update"
git push -u origin dev

:: 询问是否打开链接
set /p open_link="Do you want to open the GitHub link? (y/n): "
if /i "%open_link%"=="y" (
    echo Opening GitHub link...
    start "" "https://github.com/Inertia77/Unity-Game-PJT/tree/dev"
) else if /i "%open_link%"=="n" (
    echo Skipping link opening.
) else (
    echo Invalid input. Skipping link opening.
)

echo.
echo Operation completed!