@echo off
chcp 65001
cls
echo --- ADB Telefon Ayarlari ---
echo.
echo [1] Çözünürlük ayarla
echo [2] Density (yoğunluk) ayarla
echo [3] Bilgisayarın çözünürlüğüne eşitle
echo [4] Ayarları sıfırla
echo [5] Cik
echo.
set /p choice="Seciminizi yapin (1-5): "

if "%choice%"=="1" goto resolution
if "%choice%"=="2" goto density
if "%choice%"=="3" goto match_resolution
if "%choice%"=="4" goto reset
if "%choice%"=="5" exit
goto end

:resolution
cls
echo --- Çözünürlük Girin ---
set /p res="Lütfen çözünürlüğü girin (genişlik x yükseklik, örn: 1920x1080): "
echo Seçilen çözünürlük: %res%
adb shell wm size %res%
echo Çözünürlük ayarlandi: %res%
goto end

:density
cls
echo --- Density (yoğunluk) Girin ---
set /p density="Lütfen density (yoğunluk) değerini girin (örn: 240): "
echo Seçilen density: %density%
adb shell wm density %density%
echo Density ayarlandi: %density%
goto end

:match_resolution
cls
echo --- Bilgisayarın çözünürlüğüne eşitle ---
for /f "tokens=2 delims==" %%I in ('wmic path Win32_VideoController get CurrentHorizontalResolution /value') do set width=%%I
for /f "tokens=2 delims==" %%I in ('wmic path Win32_VideoController get CurrentVerticalResolution /value') do set height=%%I
set res=%width%x%height%
echo Bilgisayarın çözünürlüğü: %res%
adb shell wm size %res%
adb shell wm density 240
echo Çözünürlük ve density ayarlandi: %res% ve 240
goto end

:reset
cls
echo --- Ayarlari Sifirla ---
adb shell wm size reset
adb shell wm density reset
echo Çözünürlük ve density sıfırlandı.
goto end

:end
pause
