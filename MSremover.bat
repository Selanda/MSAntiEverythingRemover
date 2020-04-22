@echo off

echo This batch file will automaticlly remove MS Antivirus 2009 and MS Antispyware 2009 from the system.
echo The currently logged on user is: %username%
pause

echo Killing the running process....
taskkill.exe /im msas2009.exe

echo Removing the infected folders and files...
rmdir /S /Q C:\Program Files\Antivirus 2009
rmdir /S /Q C:\Documents and Settings\All Users\Application Data\CrucialSoft Ltd
rmdir /S /Q C:\Documents and Settings\%username%\Start Menu\Programs\MS AntiSpyware 2009

echo The system should be clean now.
pause