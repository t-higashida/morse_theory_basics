:loop

rem if EXIST Morse���_�̊�b.log (copy Morse���_�̊�b.log.* Morse���_�̊�b.log.*.old)

platex Morse���_�̊�b



if %errorlevel%  geq	1 goto delaux
if %errorlevel%  geq	0 goto copydvi

:delaux
rem del *.aux
goto stop

:copydvi
copy Morse���_�̊�b.dvi kensaku.dvi
goto stop

:stop
rem if EXIST Morse���_�̊�b.log.old (c:\bin\diff Morse���_�̊�b.log.old Morse���_�̊�b.log)

rem hidemaru .\Morse���_�̊�b.log

pause

goto loop