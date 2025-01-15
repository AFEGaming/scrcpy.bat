@echo off
chcp 65001
cls
echo --- ADB Kablosuz ---
echo.

:: Kullanıcıdan IP ve port bilgilerini al
set /p ip="Lütfen IP adresini girin (örneğin: 192.168.1.5): "
set /p port="Lütfen port numarasını girin (örneğin: 5555): "

:: Bağlantıyı kurmak için adb pair komutunu çalıştır
adb pair %ip%:%port%

echo Bağlantı işlemi tamamlandi.
pause
