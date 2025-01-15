@echo off
chcp 65001

:: IP adresini sor
set /p ip="Lütfen IP adresini girin (örnek: 192.168.1.1): "

:: Portu sor
set /p port="Lütfen port numarasını girin (örnek: 5555): "

:: scrcpy komutunu çalıştır
scrcpy --tcpip=%ip%:%port%
