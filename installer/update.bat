setx GAMING_CENTER_ROOT "%cd%"

:: Set vars
set download="https://drive.google.com/uc?export=download&id=//you-file-id//"
set saveAs=bin.7z
set zipPath=".\res\7za.exe"
set workingPath = .\GamingCenter

:: Clear old file
del %saveAs%

:: Download
cscript /nologo update.js %download% ./%saveAs%

:: Print error if not downloaded
if not exist ./%saveAs% (
	echo "Download error, retry again"
	pause
	break
)

:: Backup old one
xcopy %workingPath% .\_backup\ /s /e /y

:: Clear old .ini duples
del /s /q %workingPath%\*_1.ini

:: Do not overwrite ini, copy rest
%zipPath% x %saveAs% -aoa -xr!*.ini
%zipPath% x %saveAs% -aou *.ini -r

:: Delete downloaded file
del %saveAs%

pause