CHCP 1251 >Nul
for /f "usebackq tokens=1,2,*" %%B IN (`reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) do set DESKTOP=%%D
CHCP 866 >Nul
for /f "delims=" %%i IN ('echo %DESKTOP%') do set DESKTOP=%%i

for /L %%a in (1,1, 35) do (

	xcopy Scratch.png %DESKTOP%\Scratch%%a.png\
	xcopy Scratch2.png %DESKTOP%\Scratch%%a2.png\
	
)

