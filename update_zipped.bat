set download="https://drive.google.com/uc?export=download&id=//you-file-id//"
set saveAs=bin.7z
set sevzipPath="C:\Program Files\7-Zip\7z.exe"

cscript /nologo update.js %download% ./%saveAs%

%sevzipPath% x %saveAs% -aoa

del %saveAs%