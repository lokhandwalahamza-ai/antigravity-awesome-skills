@echo off
REM Antigravity Awesome Skills - Windows Installer
REM Double-click this file to install all 255+ skills globally

echo ========================================
echo   Antigravity Awesome Skills Installer
echo ========================================
echo.

set CLAUDE_DIR=%USERPROFILE%\.claude
set SKILLS_DIR=%CLAUDE_DIR%\skills
set TEMP_DIR=%TEMP%\antigravity-skills-temp
set REPO_URL=https://github.com/lokhandwalahamza-ai/antigravity-awesome-skills.git

echo Creating directories...
if not exist "%CLAUDE_DIR%" mkdir "%CLAUDE_DIR%"
if not exist "%SKILLS_DIR%" mkdir "%SKILLS_DIR%"

echo Cleaning up previous temp files...
if exist "%TEMP_DIR%" rmdir /s /q "%TEMP_DIR%"

echo Cloning repository (255+ skills)...
git clone --depth 1 %REPO_URL% "%TEMP_DIR%"

if not exist "%TEMP_DIR%\skills" (
    echo ERROR: Failed to clone repository
    echo Make sure git is installed and try again
    pause
    exit /b 1
)

echo Installing skills...
xcopy /E /I /Y "%TEMP_DIR%\skills" "%SKILLS_DIR%"

echo Installing CLAUDE.md for auto-activation...
copy /Y "%TEMP_DIR%\CLAUDE.md" "%CLAUDE_DIR%\CLAUDE.md"

echo Cleaning up...
rmdir /s /q "%TEMP_DIR%"

echo.
echo ========================================
echo   Installation Complete!
echo ========================================
echo.
echo Skills installed to: %SKILLS_DIR%
echo Config installed to: %CLAUDE_DIR%\CLAUDE.md
echo.
echo Skills are now globally available in Claude Code!
echo.
pause
