@echo off
setlocal
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js bulunamadi. Node.js LTS kurun ve tekrar deneyin.
  pause
  exit /b 1
)
echo.
echo [1/2] SLFASTUDIO bagimliliklari kuruluyor...
call npm run install:all
if errorlevel 1 (
  echo.
  echo Kurulum basarisiz. Yukaridaki hatayi kontrol edin.
  pause
  exit /b 1
)
echo.
echo [2/2] SLFASTUDIO baslatiliyor...
call npm run dev
pause
