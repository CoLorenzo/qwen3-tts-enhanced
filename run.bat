@echo off
echo.
echo Starting Qwen3-TTS Enhanced...
echo.

:: Check for venv first (system Python install)
if exist "venv\Scripts\python.exe" (
    call venv\Scripts\activate.bat
    set HF_HUB_DISABLE_SYMLINKS_WARNING=1
    python app.py
    pause
    exit /b 0
)

:: Check for embedded Python
if exist "python\python.exe" (
    set HF_HUB_DISABLE_SYMLINKS_WARNING=1
    set "PYTHONNOUSERSITE=1"
    set "TORCH_HOME=%~dp0cache\torch"
    set "MPLCONFIGDIR=%~dp0cache\matplotlib"
    python\python.exe app.py
    pause
    exit /b 0
)

:: Neither found
echo ERROR: Run install.bat first!
pause
exit /b 1
