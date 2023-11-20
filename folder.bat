@echo off

set "newFolder=C:\Users\CSAR1018031\Desktop\Herradura"

set "folderName=folder1"

set "fullPath=%newFolder%\%folderName%"

if not exist "%fullPath%" (
    mkdir "%fullPath%"
    echo Folder created successfully.
) else (
    echo Folder already exist.
)