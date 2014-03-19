@echo off
set path="C:\Program Files\WinRAR\";%path%
for /F "tokens=*" %%A in ('dir %1* /ad /b /-d') do (
	echo --------------------------------------------------------------------------------
	echo %%A
	for /F "tokens=*" %%B in ('dir "%%~fA\*" /s /a-d /oe /b') do (
		echo %%~nA%%~xB.rar
		rar a -ep1 -dw -i -r -ms -x*.rar -x*.db -inul "%%A\%%~nA%%~xB.rar" "%%A\*%%~xB"
	)
)
for /F "tokens=*" %%A in ('dir %1* /ad /s /b') do (
	rd "%%A" 2>NUL
)
