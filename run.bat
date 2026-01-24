@echo off
echo.
echo Starting Qwen3-TTS Voice Clone...
echo.

if not exist "venv" (
    echo ERROR: Run install.bat first!
    pause
    exit /b 1
)

call venv\Scripts\activate.bat
set HF_HUB_DISABLE_SYMLINKS_WARNING=1

python app.py
pause
