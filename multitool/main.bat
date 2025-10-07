@echo off
chcp 65001 >nul
title Multitool - Main Menu
color 0A
mode con: cols=80 lines=30

:menu
cls
echo.
echo.
echo  ================================================================================
echo                         ARTLEBOSS - MULTITOOL v1.0
echo  ================================================================================
echo	║
echo	║
echo	║
echo	║    
echo	╠═➤ [1] AngryIp
echo	╠══➤ [2] Youtube
echo	╠═══➤ [3] OSINT tool
echo	╠════➤ [4] ChatGPT
echo	╠═════➤ [5] Claude AI
echo	╠══════➤ [6] Deepseek AI
echo	╠═══════➤ [7] Clean temporary files
echo	╠════════➤ [8] Ping and connection test
echo	╠═════════➤ [9] Password generator
echo	╠══════════➤ [10] Open applications
echo	╠═══════════➤ [11] Google drive
echo	╠════════════➤ [12] Gmail
echo	╠═════════════➤ [13] Google
echo	╠══════════════➤ [14] About
echo	╚═══════════════➤ [15] Exit
echo.
echo  ================================================================================
set /p choix="Enter your choice: "

if "%choix%"=="1" goto angryip
if "%choix%"=="2" (
    start "" "https://www.youtube.com"
    goto menu
)
if "%choix%"=="3" (
    start "" "https://whatsmyname.app/"
    goto menu
)
if "%choix%"=="4" (
	start "" "https://chatgpt.com/"
	goto menu
)
if "%choix%"=="5" (
	start "" "https://claude.ai/new"
	goto menu
)
if "%choix%"=="6" (
	start "" "https://chat.deepseek.com/"
	goto menu
)
if "%choix%"=="7" goto nettoyage
if "%choix%"=="8" goto ping
if "%choix%"=="9" goto motdepasse
if "%choix%"=="10" goto applications
if "%choix%"=="11" (
	start "" "https://drive.google.com/drive/home"
	goto menu
)
if "%choix%"=="12" (
	start "" "https://mail.google.com/mail/u/0/#inbox"
	goto menu
)
if "%choix%"=="13" (
	start "" "https://www.google.com/"
	goto menu
)
if "%choix%"=="14" goto apropos
if "%choix%"=="15" goto quitter
echo.
echo Invalid choice! Please try again.
pause
goto menu

:angryip
cls
if exist "C:\Users\Arthur Godart\OneDrive\Desktop\multitool\Angry IP Scanner\ipscan.exe" (
    start "" "C:\Users\Arthur Godart\OneDrive\Desktop\multitool\Angry IP Scanner\ipscan.exe"
    goto menu
)

REM Si non installé - redirection automatique vers la page d'installation
goto install_angryip

:install_angryip
cls
echo.
echo  ================================================================================
echo                         ANGRYIP SCANNER - NOT INSTALLED
echo  ================================================================================
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
    echo  ================================================================================
    echo                              OPENING BROWSER
    echo  ================================================================================
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
echo	╚════➤ [4] Snapchat username
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
echo.
echo  ================================================================================
pause
goto menu

:quitter
cls
echo.
echo Thank you for using the Multitool!
timeout /t 2 >nul
exit