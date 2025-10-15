@echo off
chcp 65001 >nul
title Artleboss Multitool V1.2 - Main Menu
color 0A
mode con: cols=80 lines=30

:menu
cls
echo.
echo.
echo ╔════════════════════════════════════════════════════════════════════════════════╗
echo ║                       ARTLEBOSS - MULTITOOL v1.2				 ║										
echo ╚════════════════════════════════════════════════════════════════════════════════╝
echo	║
echo	║
echo	║
echo	║    
echo	╠═➤ [1] AngryIp
echo	╠══➤ [2] WinRAR
echo	╠═══➤ [3] Balena Etcher
echo	╠════➤ [4] WizTree
echo	╠═════➤ [5] PuTTY
echo	╠══════➤ [6] Uncensored AI
echo	╠═══════➤ [7] Youtube
echo	╠════════➤ [8] OSINT tool
echo	╠═════════➤ [9] ChatGPT
echo	╠══════════➤ [10] Claude AI
echo	╠═══════════➤ [11] Deepseek AI
echo	╠════════════➤ [12] Clean temporary files
echo	╠═════════════➤ [13] Ping and connection test
echo	╠══════════════➤ [14] Password generator
echo	╠═══════════════➤ [15] Open applications
echo	╠════════════════➤ [16] Google drive
echo	╠═════════════════➤ [17] Gmail
echo	╠══════════════════➤ [18] Google
echo	╠═══════════════════➤ [19] About
echo	╚════════════════════➤ [20] Exit
echo.
echo =================================================================================
set /p choix="Enter your choice: "
echo.

REM those are secret codes
if "%choix%"=="PRANKS" goto pranks
REM this is a normal choice
if "%choix%"=="1" goto angryip
if "%choix%"=="2" goto winrar
if "%choix%"=="3" goto balena
if "%choix%"=="4" goto wiztree
if "%choix%"=="5" goto putty
if "%choix%"=="6" goto uncensoredaiinfo
if "%choix%"=="7" (
    start "" "https://www.youtube.com"
    goto menu
)
if "%choix%"=="8" (
    start "" "https://whatsmyname.app/"
    goto menu
)
if "%choix%"=="9" (
	start "" "https://chatgpt.com/"
	goto menu
)
if "%choix%"=="10" (
	start "" "https://claude.ai/new"
	goto menu
)
if "%choix%"=="11" (
	start "" "https://chat.deepseek.com/"
	goto menu
)
if "%choix%"=="12" goto nettoyage
if "%choix%"=="13" goto ping
if "%choix%"=="14" goto motdepasse
if "%choix%"=="15" goto applications
if "%choix%"=="16" (
	start "" "https://drive.google.com/drive/home"
	goto menu
)
if "%choix%"=="17" (
	start "" "https://mail.google.com/mail/u/0/#inbox"
	goto menu
)
if "%choix%"=="18" (
	start "" "https://www.google.com/"
	goto menu
)
if "%choix%"=="19" goto apropos
if "%choix%"=="20" goto quitter
echo.
echo Invalid choice! Please try again.
pause
goto menu

:pranks
cls
echo.
echo  ================================================================================
echo                         PRANKS
echo  ================================================================================
echo	║
echo	║
echo	║
echo	║    
echo	╚═➤ [1] Bugging screen prank
echo.
set "prank="
set /p prank="Enter your prank: "
if "%prank%"=="1" (
	@echo
	:X
	start cmd
	set "prank="
)

goto menu

REM 1
:angryip
cls
echo Recherche d'Angry IP Scanner...
REM Chemins courants à vérifier
set "paths[0]=%ProgramFiles%\Angry IP Scanner\ipscan.exe"
set "paths[1]=%ProgramFiles(x86)%\Angry IP Scanner\ipscan.exe"
set "paths[2]=%LOCALAPPDATA%\Programs\Angry IP Scanner\ipscan.exe"
set "paths[3]=%USERPROFILE%\Desktop\Angry IP Scanner\ipscan.exe"
set "paths[4]=%USERPROFILE%\OneDrive\Desktop\Angry IP Scanner\ipscan.exe"
set "paths[5]=%USERPROFILE%\Documents\Angry IP Scanner\ipscan.exe"
set "paths[6]=%USERPROFILE%\Downloads\Angry IP Scanner\ipscan.exe"
REM Vérifier chaque chemin
for /L %%i in (0,1,6) do (
    call set current_path=%%paths[%%i]%%
    call if exist "%%current_path%%" (
        call start "" "%%current_path%%"
        goto menu
    )
)
REM Si non trouvé, recherche dans tout le disque C: (plus lent)
echo Recherche approfondie en cours...
for /f "delims=" %%a in ('dir /s /b "C:\ipscan.exe" 2^>nul') do (
    start "" "%%a"
    goto menu
)
REM Si toujours pas trouvé
echo.
echo ERREUR: Angry IP Scanner n'a pas ete trouve sur cet ordinateur.
echo Veuillez l'installer ou le telecharger.
echo.
pause
REM Si non installé - redirection automatique vers la page d'installation
goto install_angryip

:install_angryip
cls
echo.
echo ╔════════════════════════════════════════════════════════════════════════════════╗
echo ║                       ANGRYIP SCANNER - NOT INSTALLED			 ║										
echo ╚════════════════════════════════════════════════════════════════════════════════╝
echo.
echo  AngryIP Scanner is not installed on your system.
echo.
echo  What would you like to do?
echo.
echo	║
echo	╠═➤ [1] Download AngryIP Scanner (opens browser)
echo	╠══➤ [2] Specify custom installation path
echo	╚═══➤ [3] Return to main menu
echo.
echo  ================================================================================
set /p action="Choose: "

if "%action%"=="1" (
    cls
    echo.
	echo ╔════════════════════════════════════════════════════════════════════════════════╗
	echo ║                       OPENING BROWSER			 	║										
	echo ╚════════════════════════════════════════════════════════════════════════════════╝
    echo.
    echo  Opening the download page in your browser...
    echo  Please download and install AngryIP Scanner.
    echo.
    echo  After installation, restart the multitool or use option 2
    echo  to specify a custom path.
    echo.
    start "" "https://angryip.org/download/"
    echo  Press any key to return to menu...
    pause >nul
    goto menu
)

if "%action%"=="2" goto custom_path

if "%action%"=="3" goto menu

echo.
echo Invalid choice! Please try again.
pause
goto install_angryip

:custom_path
cls
echo.
echo  ================================================================================
echo                         SPECIFY CUSTOM PATH
echo  ================================================================================
echo.
echo  Enter the full path to ipscan.exe
echo  Example: C:\Program Files\AngryIP Scanner\ipscan.exe
echo.
set /p custom="Path: "

if exist "%custom%" (
    echo.
    echo  Path verified! Launching AngryIP Scanner...
    start "" "%custom%"
    timeout /t 2 >nul
    goto menu
) else (
    echo.
    echo  ERROR: File not found at the specified path!
    echo  Please verify the path and try again.
    echo.
    pause
    goto install_angryip
)

REM 2
:winrar
cls
echo Recherche de WinRAR...
REM Chemins courants à vérifier
set "paths[0]=%ProgramFiles%\WinRAR\WinRAR.exe"
set "paths[1]=%ProgramFiles(x86)%\WinRAR\WinRAR.exe"
set "paths[2]=%LOCALAPPDATA%\Programs\WinRAR\WinRAR.exe"
set "paths[3]=%USERPROFILE%\Desktop\WinRAR\WinRAR.exe"
set "paths[4]=%USERPROFILE%\OneDrive\Desktop\WinRAR\WinRAR.exe"
set "paths[5]=%USERPROFILE%\Documents\WinRAR\WinRAR.exe"
set "paths[6]=%USERPROFILE%\Downloads\WinRAR\WinRAR.exe"
REM Vérifier chaque chemin
for /L %%i in (0,1,6) do (
    call set current_path=%%paths[%%i]%%
    call if exist "%%current_path%%" (
        call "%%current_path%%"
        goto menu
    )
)
REM Si non trouvé, recherche dans tout le disque C: (plus lent)
echo Recherche approfondie en cours...
for /f "delims=" %%a in ('dir /s /b "C:\WinRAR.exe" 2^>nul') do (
    call "%%a"
    goto menu
)
REM Si toujours pas trouvé
echo.
echo ERREUR: WinRAR n'a pas ete trouve sur cet ordinateur.
echo Veuillez l'installer ou le telecharger.
echo.
pause
REM Si non installé - redirection automatique vers la page d'installation
goto install_winrar


:install_winrar
cls
echo.
echo  ================================================================================
echo                         WINRAR - NOT INSTALLED
echo  ================================================================================
echo.
echo  WinRAR is not installed on your system.
echo.
echo  What would you like to do?
echo.
echo	║
echo	╠═➤ [1] Download WinRAR (opens browser)
echo	╠══➤ [2] Specify custom installation path
echo	╚═══➤ [3] Return to main menu
echo.
echo  ================================================================================
set /p action="Choose: "
if "%action%"=="1" (
    cls
    echo.
    echo  ================================================================================
    echo                              OPENING BROWSER
    echo  ================================================================================
    echo.
    echo  Opening the download page in your browser...
    echo  Please download and install WinRAR.
    echo.
    echo  After installation, restart the multitool or use option 2
    echo  to specify a custom path.
    echo.
    start "" "https://www.win-rar.com/download.html"
    echo  Press any key to return to menu...
    pause >nul
    goto menu
)
if "%action%"=="2" goto custom_path_winrar
if "%action%"=="3" goto menu
echo.
echo Invalid choice! Please try again.
pause
goto install_winrar

:custom_path_winrar
cls
echo.
echo  ================================================================================
echo                         SPECIFY CUSTOM PATH
echo  ================================================================================
echo.
echo  Enter the full path to WinRAR.exe
echo  Example: C:\Program Files\WinRAR\WinRAR.exe
echo.
set /p custom="Path: "
if exist "%custom%" (
    echo.
    echo  Path verified! Launching WinRAR...
    start "" "%custom%"
    timeout /t 2 >nul
    goto menu
) else (
    echo.
    echo  ERROR: File not found at the specified path!
    echo  Please verify the path and try again.
    echo.
    pause
    goto install_winrar
)

REM 4
:wiztree
cls
echo Recherche de WizTree...
REM Chemins courants à vérifier
set "paths[0]=%ProgramFiles%\WizTree\WizTree64.exe"
set "paths[1]=%ProgramFiles(x86)%\WizTree\WizTree.exe"
set "paths[2]=%LOCALAPPDATA%\Programs\WizTree\WizTree64.exe"
set "paths[3]=%USERPROFILE%\Desktop\WizTree\WizTree64.exe"
set "paths[4]=%USERPROFILE%\OneDrive\Desktop\WizTree\WizTree64.exe"
set "paths[5]=%USERPROFILE%\Documents\WizTree\WizTree64.exe"
set "paths[6]=%USERPROFILE%\Downloads\WizTree\WizTree64.exe"
set "paths[7]=%ProgramFiles%\WizTree\WizTree.exe"

REM Vérifier chaque chemin
for /L %%i in (0,1,7) do (
    call set current_path=%%paths[%%i]%%
    call if exist "%%current_path%%" (
        call start "" "%%current_path%%"
        goto menu
    )
)

REM Si non trouvé, recherche dans tout le disque C: (plus lent)
echo Recherche approfondie en cours...
for /f "delims=" %%a in ('dir /s /b "C:\WizTree64.exe" 2^>nul') do (
    start "" "%%a"
    goto menu
)
for /f "delims=" %%a in ('dir /s /b "C:\WizTree.exe" 2^>nul') do (
    start "" "%%a"
    goto menu
)

REM Si toujours pas trouvé
echo.
echo ERREUR: WizTree n'a pas ete trouve sur cet ordinateur.
echo Veuillez l'installer ou le telecharger.
echo.
pause
REM Si non installé - redirection automatique vers la page d'installation
goto install_wiztree

:install_wiztree
cls
echo.
echo ╔════════════════════════════════════════════════════════════════════════════════╗
echo ║                          WIZTREE - NOT INSTALLED                               ║
echo ╚════════════════════════════════════════════════════════════════════════════════╝
echo.
echo  WizTree is not installed on your system.
echo.
echo  What would you like to do?
echo.
echo	║
echo	╠═➤ [1] Download WizTree (opens browser)
echo	╠══➤ [2] Specify custom installation path
echo	╚═══➤ [3] Return to main menu
echo.
echo  ================================================================================
set /p action="Choose: "

if "%action%"=="1" (
    cls
    echo.
	echo ╔════════════════════════════════════════════════════════════════════════════════╗
	echo ║                       OPENING BROWSER                                          ║
	echo ╚════════════════════════════════════════════════════════════════════════════════╝
    echo.
    echo  Opening the download page in your browser...
    echo  Please download and install WizTree.
    echo.
    echo  After installation, restart the multitool or use option 2
    echo  to specify a custom path.
    echo.
    start "" "https://www.diskanalyzer.com/download"
    echo  Press any key to return to menu...
    pause >nul
    goto menu
)
if "%action%"=="2" goto custom_path_wiztree
if "%action%"=="3" goto menu
echo.
echo Invalid choice! Please try again.
pause
goto install_wiztree

:custom_path_wiztree
cls
echo.
echo  ================================================================================
echo                         SPECIFY CUSTOM PATH
echo  ================================================================================
echo.
echo  Enter the full path to WizTree64.exe or WizTree.exe
echo  Example: C:\Program Files\WizTree\WizTree64.exe
echo.
set /p custom="Path: "

if exist "%custom%" (
    echo.
    echo  Path verified! Launching WizTree...
    start "" "%custom%"
    timeout /t 2 >nul
    goto menu
) else (
    echo.
    echo  ERROR: File not found at the specified path!
    echo  Please verify the path and try again.
    echo.
    pause
    goto install_wiztree
)

REM 3
:balena
cls
echo Recherche de Balena Etcher...
REM Chemins courants à vérifier
set "paths[0]=%ProgramFiles%\balena_etcher\balenaEtcher.exe"
set "paths[1]=%ProgramFiles(x86)%\balena_etcher\balenaEtcher.exe"
set "paths[2]=%LOCALAPPDATA%\Programs\balena_etcher\balenaEtcher.exe"
set "paths[3]=%USERPROFILE%\Desktop\balenaEtcher.exe"
set "paths[4]=%USERPROFILE%\OneDrive\Desktop\balenaEtcher.exe"
set "paths[5]=%USERPROFILE%\Documents\balenaEtcher.exe"
set "paths[6]=%USERPROFILE%\Downloads\balenaEtcher.exe"
REM Vérifier chaque chemin
for /L %%i in (0,1,6) do (
    call set current_path=%%paths[%%i]%%
    call if exist "%%current_path%%" (
        call "%%current_path%%"
        goto menu
    )
)
REM Si non trouvé, recherche dans tout le disque C: (plus lent)
echo Recherche approfondie en cours...
for /f "delims=" %%a in ('dir /s /b "C:\balenaEtcher.exe" 2^>nul') do (
    call "%%a"
    goto menu
)
REM Si toujours pas trouvé
echo.
echo ERREUR: Balena Etcher n'a pas ete trouve sur cet ordinateur.
echo Veuillez l'installer ou le telecharger.
echo.
pause
REM Si non installé - redirection automatique vers la page d'installation
goto install_balena

:install_balena
cls
echo.
echo  ================================================================================
echo                         BALENA ETCHER - NOT INSTALLED
echo  ================================================================================
echo.
echo  Balena Etcher is not installed on your system.
echo.
echo  What would you like to do?
echo.
echo	║
echo	╠═➤ [1] Download Balena Etcher (opens browser)
echo	╠══➤ [2] Specify custom installation path
echo	╚═══➤ [3] Return to main menu
echo.
echo  ================================================================================
set /p action="Choose: "
if "%action%"=="1" (
    cls
    echo.
    echo  ================================================================================
    echo                              OPENING BROWSER
    echo  ================================================================================
    echo.
    echo  Opening the download page in your browser...
    echo  Please download and install Balena Etcher.
    echo.
    echo  After installation, restart the multitool or use option 2
    echo  to specify a custom path.
    echo.
    start "" "https://etcher.balena.io/"
    echo  Press any key to return to menu...
    pause >nul
    goto menu
)
if "%action%"=="2" goto custom_path_balena
if "%action%"=="3" goto menu
echo.
echo Invalid choice! Please try again.
pause
goto install_balena

:custom_path_balena
cls
echo.
echo  ================================================================================
echo                         SPECIFY CUSTOM PATH
echo  ================================================================================
echo.
echo  Enter the full path to balenaEtcher.exe
echo  Example: C:\Program Files\balenaEtcher\balenaEtcher.exe
echo.
set /p custom="Path: "
if exist "%custom%" (
    echo.
    echo  Path verified! Launching Balena Etcher...
    start "" "%custom%"
    timeout /t 2 >nul
    goto menu
) else (
    echo.
    echo  ERROR: File not found at the specified path!
    echo  Please verify the path and try again.
    echo.
    pause
    goto install_balena
)

REM 5
:putty
cls
echo Recherche de PuTTY...
REM Chemins courants à vérifier
set "paths[0]=%ProgramFiles%\PuTTY\putty.exe"
set "paths[1]=%ProgramFiles(x86)%\PuTTY\putty.exe"
set "paths[2]=%LOCALAPPDATA%\Programs\PuTTY\putty.exe"
set "paths[3]=%USERPROFILE%\Desktop\putty.exe"
set "paths[4]=%USERPROFILE%\OneDrive\Desktop\putty.exe"
set "paths[5]=%USERPROFILE%\Documents\putty.exe"
set "paths[6]=%USERPROFILE%\Downloads\putty.exe"
REM Vérifier chaque chemin
for /L %%i in (0,1,6) do (
    call set current_path=%%paths[%%i]%%
    call if exist "%%current_path%%" (
        call "%%current_path%%"
        goto menu
    )
)
REM Si non trouvé, recherche dans tout le disque C: (plus lent)
echo Recherche approfondie en cours...
for /f "delims=" %%a in ('dir /s /b "C:\putty.exe" 2^>nul') do (
    call "%%a"
    goto menu
)
REM Si toujours pas trouvé
echo.
echo ERREUR: PuTTY n'a pas ete trouve sur cet ordinateur.
echo Veuillez l'installer ou le telecharger.
echo.
pause
REM Si non installé - redirection automatique vers la page d'installation
goto install_putty

:install_putty
cls
echo.
echo  ================================================================================
echo                         PUTTY - NOT INSTALLED
echo  ================================================================================
echo.
echo  PuTTY is not installed on your system.
echo.
echo  What would you like to do?
echo.
echo	║
echo	╠═➤ [1] Download PuTTY (opens browser)
echo	╠══➤ [2] Specify custom installation path
echo	╚═══➤ [3] Return to main menu
echo.
echo  ================================================================================
set /p action="Choose: "
if "%action%"=="1" (
    cls
    echo.
    echo  ================================================================================
    echo                              OPENING BROWSER
    echo  ================================================================================
    echo.
    echo  Opening the download page in your browser...
    echo  Please download and install PuTTY.
    echo.
    echo  After installation, restart the multitool or use option 2
    echo  to specify a custom path.
    echo.
    start "" "https://www.putty.org/"
    echo  Press any key to return to menu...
    pause >nul
    goto menu
)
if "%action%"=="2" goto custom_path_putty
if "%action%"=="3" goto menu
echo.
echo Invalid choice! Please try again.
pause
goto install_putty

:custom_path_putty
cls
echo.
echo  ================================================================================
echo                         SPECIFY CUSTOM PATH
echo  ================================================================================
echo.
echo  Enter the full path to putty.exe
echo  Example: C:\Program Files\PuTTY\putty.exe
echo.
set /p custom="Path: "
if exist "%custom%" (
    echo.
    echo  Path verified! Launching PuTTY...
    start "" "%custom%"
    timeout /t 2 >nul
    goto menu
) else (
    echo.
    echo  ERROR: File not found at the specified path!
    echo  Please verify the path and try again.
    echo.
    pause
    goto install_putty
)

REM 6
:uncensoredaiinfo
cls
echo.
echo  ================================================================================
echo                            UNCENSORED AI - INFO
echo  ================================================================================
echo.
echo 1. Head to the website by clicking on "1"
echo 2. Enter your message and click on an emoji. Then copy the emoji on the bottom of the page
echo 3. Open back the multitool and enter "NEXT" in to continue.
echo 4. Finally choose the ai and paste the emoji in the research bar. There you got an uncensored
echo response from the ai (NOTE: the method might be patch when you use it)
set /p next="Enter NEXT to continue: "
echo.
if "%next%"=="NEXT" goto uncensoredai

:uncensoredai
cls
echo.
echo  ================================================================================
echo                            UNCENSORED AI
echo  ================================================================================
echo.
echo	║
echo	║
echo	║
echo	╠═➤ [1] Encoding Website
echo	╠══➤ [2] Deepseek AI
echo	╠═══➤ [3] Claude AI
echo	╠════➤ [4] ChatGPT AI
echo	╚═════➤ [5] Copilot AI
echo.
echo 1. Head to the website by clicking on "1"
echo 2. Enter your message and click on an emoji. Then copy the emoji on the bottom of the page
echo 3. Open back the multitool and enter "NEXT" in to continue.
echo 4. Finally choose the ai and paste the emoji in the research bar. There you got an uncensored
echo response from the ai (NOTE: the method might be patch when you use it)
set /p uncensoredai="Choose: "
if "%uncensoredai%"=="1" start "" "https://emoji-encoder.vercel.app/?mode=encode"
if "%uncensoredai%"=="2" start "" "https://chat.deepseek.com/"
if "%uncensoredai%"=="3" start "" "https://claude.ai/new"
if "%uncensoredai%"=="4" start "" "https://chatgpt.com/"
if "%uncensoredai%"=="5" start "" "https://copilot.microsoft.com/" 

:nettoyage
cls
echo.
echo  ================================================================================
echo                            CLEANING FILES
echo  ================================================================================
echo.
echo Cleaning in progress...
del /q /f /s %temp%\* 2>nul
echo.
echo Cleaning completed!
echo.
pause
goto menu

:ping
cls
echo.
echo  ================================================================================
echo                         PING AND CONNECTION TEST
echo  ================================================================================
echo.
set /p site="Enter the address to test (ex: google.com): "
echo.
ping %site% -n 4
echo.
pause
goto menu

:motdepasse
cls
echo.
echo  ================================================================================
echo                          PASSWORD GENERATOR
echo  ================================================================================
echo.
set /p longueur="Password length (8-32): "
if not defined longueur set longueur=12
if %longueur% LSS 8 set longueur=8
if %longueur% GTR 32 set longueur=32

setlocal enabledelayedexpansion
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "password="
set "len=0"

:genloop
set /a "rand=%random% %% 62"
set "char=!chars:~%rand%,1!"
set "password=!password!!char!"
set /a "len+=1"
if !len! LSS %longueur% goto genloop

echo.
echo Generated password: !password!
echo.
endlocal
pause
goto menu

:applications
cls
echo.
echo  ================================================================================
echo                              OPEN SOFTWARES
echo  ================================================================================
echo.
echo  [1] Notepad
echo  [2] Windows Calculator
echo  [3] Task Manager
echo  [4] File Explorer
echo  [5] Back to menu
echo.
set /p app="Choose: "

if "%app%"=="1" start notepad
if "%app%"=="2" start calc
if "%app%"=="3" start taskmgr
if "%app%"=="4" start explorer
if "%app%"=="5" goto menu
goto applications

:apropos
cls
echo.
echo  ================================================================================
echo                                    ABOUT
echo  ================================================================================
echo.
echo	║
echo	║
echo	║
echo	╠═➤ [1] Youtube channel
echo	╠══➤ [2] Instagram account
echo	╠═══➤ [3] Tiktok account
echo	╠════➤ [4] Snapchat username
echo	╚═════➤ [5] Crypto Donation
echo.
echo  Made by Artleboss22
echo  Copyright © 2025 [Arthur (Artleboss22) Godart]
echo  Multitool Batch v1.0
echo.  
echo  This is an educational purposes only tool. 
echo  I am not responsible for any misuse of the multitool.
echo  Developed in Batch
set /p social="Choose: "
if "%social%"=="1" start "" "https://www.youtube.com/channel/UCZNqEGRWrTfX14oRvkzTcMQ"
if "%social%"=="2" start "" "https://www.instagram.com/arthurgod22/"
if "%social%"=="3" msg * "My tiktok account was banned :/"
if "%social%"=="4" msg * "My snapchat username is hvk_w0x2010"
if "%social%"=="5" start "" "metamask"
echo.
echo  ================================================================================
pause
goto menu

:quitter
cls
echo.
echo Thank you for using the Multitool!
timeout /t 1 >nul
exit


