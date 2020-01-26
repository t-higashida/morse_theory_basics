:loop

rrem if EXIST MorseTheory.log (copy MorseTheory.log.* MorseTheory.log.*.old)

platex MorseTheory



if %errorlevel%  geq	1 goto delaux
if %errorlevel%  geq	0 goto copydvi

:delaux
rem del *.aux
goto stop

:copydvi
copy MorseTheory.dvi kensaku.dvi
goto stop

:stop
rem if EXIST MorseTheory.log.old (c:\bin\diff MorseTheory.log.old MorseTheory.log)

rem hidemaru .\MorseTheory.log

pause

goto loop