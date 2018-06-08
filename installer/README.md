# Main

It's installer i use for my projects. It downloads 7z file from gdrive, unpacks it, saves old .ini configs, backups old folder

# Setting and install

- You can customize icons by putting any `.ico` you want into `./res`
- Icons will appear after `Update` launched once. It related with windows shortcut issues
- Set `download` varible to link you want download from. And set `workingPath` to name of folder *in* your archive
- You you want `Launch` shortcut to work you have to *(right_click->properties) and set correct object path

# Bugs

- Google drive will "check for viruses" at first (Globaly for file) download. You have to open link in browser and agree with "download without checking"