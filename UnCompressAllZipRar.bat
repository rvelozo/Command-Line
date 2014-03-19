@echo off
set path="C:\Program Files\WinRAR\";%path%
for /F "tokens=*" %%A in ('dir %1* /ad /b') do (
	echo --------------------------------------------------------------------------------
	echo %%A
	winrar x "%%A\*" "%%A" -y -i
	winrar x "%%A\*.zip" "%%A" -y -i
	del /s /q "%%A\*.rar" 2>NUL
	del /s /q "%%A\*.zip" 2>NUL
)
