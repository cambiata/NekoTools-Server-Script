echo off

tasklist /fi "imagename eq nekotools.exe" |find ":" > nul
if errorlevel 1 taskkill /f /im "nekotools.exe"

nekotools server -rewrite -d %1
