@echo off
curl -L -o eshanized-login.py https://raw.githubusercontent.com/eshanized/eshanized-mechanism/master/eshanized-login.py
curl -L -o eshanized-loop.bat https://raw.githubusercontent.com/eshanized/eshanized-mechanism/master/eshanized-loop.bat
curl -L -o eshanized-show.bat https://raw.githubusercontent.com/eshanized/eshanized-mechanism/master/eshanized-show.bat
certutil -urlcache -split -f "https://github.com/rustdesk/rustdesk/releases/download/1.2.3-2/rustdesk-1.2.3-2-x86_64.exe" rustdesk.exe
pip install pyautogui --quiet
pip install psutil --quiet
curl -s -L -o eshanized-time.py https://raw.githubusercontent.com/eshanized/eshanized-mechanism/master/eshanized-time.py
curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > errormsg.txt 2>&1
set password=@#Eshanized1234
powershell -Command "Set-LocalUser -Name 'eshanized' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"
start "" "rustdesk.exe"
python login.py
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
tzutil /s "Sri Lanka Standard Time"