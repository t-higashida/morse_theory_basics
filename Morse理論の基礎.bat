:loop

rem if EXIST Morse理論の基礎.log (copy Morse理論の基礎.log.* Morse理論の基礎.log.*.old)

platex Morse理論の基礎



if %errorlevel%  geq	1 goto delaux
if %errorlevel%  geq	0 goto copydvi

:delaux
rem del *.aux
goto stop

:copydvi
copy Morse理論の基礎.dvi kensaku.dvi
goto stop

:stop
rem if EXIST Morse理論の基礎.log.old (c:\bin\diff Morse理論の基礎.log.old Morse理論の基礎.log)

rem hidemaru .\Morse理論の基礎.log

pause

goto loop