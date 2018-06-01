set download="https://drive.google.com/uc?export=download&id=//you-file-id//"
set saveAs=file

cscript /nologo update.js %download% ./%saveAs%_tmp

move /Y %saveAs%_tmp %saveAs%

del %saveAs%