:menu
@echo off & color 0f & cls & title FivePD FR                                                                                                   V E R S I O N     1.0                                                                                       ToKu
echo.
echo D I S C O R D . G G / S I N I X D E V 
echo.
echo    I N F O R M A T I O N S 
echo    [A] Telechargement    [B] Releases 
echo.
echo    A I D E 
echo    [C] Besoin d'aide  
echo.
echo    A U T R E
echo    [D] Version           [E] Fermer le programme
echo.
echo    S E R V E U R
echo    [F] Lanceur 
echo. 
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={a} (goto :a)
if /i {%ANSWER%}=={b} (goto :b)
if /i {%ANSWER%}=={c} (goto :c)
if /i {%ANSWER%}=={D} (goto :d)
if /i {%ANSWER%}=={E} (goto :e)
if /i {%ANSWER%}=={F} (goto :f)
goto :menu
exit

:a
echo.
echo LIEN PAS DISPONIBLE !
start https://discord.gg/sinixdev
echo.
set /p answer="Retourner sur le menu du demarage ? (Y/N) > "
if /i {%ANSWER%}=={y} (goto :menu)
if /i {%ANSWER%}=={n} (goto:exit)

:b
echo.
echo    Voici les dernieres versions :
echo.
echo - V1.0  (15/11/2022)
echo.
echo Dernieres version disponible ici :
set /p answer="Retourner sur le menu du demarage ? (Y/N) > "
if /i {%ANSWER%}=={y} (goto :menu)
if /i {%ANSWER%}=={n} (goto:exit)

:c
echo.
echo Repondez par [O] ou [N]
set /p answer="Etre redirige vers notre discord ? > "
if /i {%ANSWER%}=={O} (start https://discord.gg/sinixdev)
if /i {%ANSWER%}=={N} (goto :menu)
ping luncher -n 5 >nul
echo.
echo Repondez par [O] ou [N]
set /p answer="Etre dirige vers notre github ? > "
if /i {%ANSWER%}=={O} (start https://github.com/ToKuOFFI)
if /i {%ANSWER%}=={N} (goto :menu)
goto :menu
exit


:d  
echo.
echo Vous avez la version - V1.0 du 15/11/2022 !
echo Merci de mettre a jour votre version du FivePD toutes les 2 semaines !
echo.
set /p answer="Retourner sur le menu du demarage ? (Y/N) > "
if /i {%ANSWER%}=={y} (goto :menu)
if /i {%ANSWER%}=={n} (goto:exit)


:e
exit

:f 
echo.
echo Assurez-vous d'avoir la bonne version !
echo Changer les chemins d'acces lignes : 93 et 94 !
echo.
set /p answer="Demarrer le serveur ? (Y/N) > "
if /i {%ANSWER%}=={y} (goto :g)
if /i {%ANSWER%}=={n} (goto:menu)

:G
echo.
echo Lancement du serveur en cours... Merci de bien vouloir patienter !
ping luncher -n 2 >nul
echo.
cd /c C:\Users\tokup\Desktop\FXServer\server-data
C:\Users\tokup\Desktop\FXServer\FXServer.exe +exec server.cfg
rem 
pause
exit
