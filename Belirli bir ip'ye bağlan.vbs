Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd.exe /c chcp 65001 >nul && scrcpy --fullscreen --tcpip=İP-ADRESİNİZ-VE-PORTUNUZ", 0, False
