@echo off
title TEAM VIDEO INTERFACE - 1.9.4
color 0A
cls

:: === LOGIN SYSTEM STARTS HERE ===
:login_start
cls
color 0F
echo.
echo =========================================================
echo       [ TEAM VIDEO INTERFACE - USER AUTHENTICATION ]
echo       NOVA ENTERPRISES ^| Team Video Technologies
echo =========================================================
echo.
echo USER AUTHENTICATION REQUIRED ^| STATE YOUR USERNAME AND PASSWORD
echo ----------------------------------------------------------------
set /p username_input="Enter Username: "

:: --- Define Users and Passwords ---
:: User: Nintendo64, Password: legendoflegends
:: User: Blox_Gamer, Password: Iron Man <--- NEW USER DEFINITION

if /i "%username_input%"=="Nintendo64" (
    set /p password_input="Enter Password (THIS IS BUGGY | IF IT SAYS ACCESS DENIED IF YOUR PASSWORD IS CORRECT TRY ENTERING YOUR PASSWORD FASTER): "
    if "%password_input%"=="legendoflegends" (
        :: Correct password for Nintendo64
        cls
        color 0A
        echo.
        echo =========================================================
        echo                    ACCESS GRANTED
        echo =========================================================
        echo.
        timeout /t 1 >nul
        cls
        timeout /t 4 >nul
        goto login_success
    ) else (
        :: Wrong password for Nintendo64
        color 0C
        cls
        echo.
        echo =========================================================
        echo                     ACCESS DENIED
        echo =========================================================
        echo.
        timeout /t 2 >nul
        goto login_start
    )
) else if /i "%username_input%"=="Blox_Gamer" (
    set /p password_input="Enter Password (THIS IS BUGGY | IF IT SAYS ACCESS DENIED IF YOUR PASSWORD IS CORRECT TRY ENTERING YOUR PASSWORD FASTER): "
    if "%password_input%"=="Ironman" (
        :: Correct password for Blox_Gamer
        cls
        color 0A
        echo.
        echo =========================================================
        echo                    ACCESS GRANTED
        echo =========================================================
        echo.
        timeout /t 1 >nul
        cls
        timeout /t 4 >nul
        goto login_success
    ) else (
        :: Wrong password for Blox_Gamer
        color 0C
        cls
        echo.
        echo =========================================================
        echo                     ACCESS DENIED
        echo =========================================================
        echo.
        timeout /t 2 >nul
        goto login_start
    )
) else ( REM <--- This 'else' catches any username not found in the above 'if' or 'else if' blocks
    :: Username not found
    color 0C
    cls
    echo.
    echo =========================================================
    echo                   USER DOES NOT EXIST
    echo =========================================================
    echo.
    timeout /t 3 >nul
    goto login_start
)

:login_success
:: === LOGIN SYSTEM ENDS HERE ===

echo Initializing The Interface...
ping localhost -n 4 >nul
echo Loading core modules...
ping localhost -n 3 >nul
echo Loading Interface...
ping localhost -n 4 >nul
ping localhost -n 3 >nul
echo Enabling Interface System...
ping localhost -n 6 >nul
cls

:: === PROGRESS BAR WITH PERCENTAGE STARTS HERE ===
setlocal enabledelayedexpansion
set "progress="
set /a percent=1

for /L %%i in (1,1,30) do (
    set "progress=!progress!="
    set /a percent=%%i*100/30
    cls
    echo Loading System Database.
    echo THIS MAY TAKE A WHILE
    echo.
    echo [!progress!]
    echo Loading... !percent!%%
    ping localhost -n 2 >nul
)
:: === PROGRESS BAR WITH PERCENTAGE ENDS HERE ===

timeout /t 2 >nul
cls
color 0A
echo Finalizing startup...
ping localhost -n 6 >nul
cls
cls
color 0A
:: Fancy Text Header
echo =========================================================
echo           [ TEAM VIDEO INTERFACE - 1.9.4 BETA INPROVED ]
echo         NOVA ENTERPRISES ^| Team Video Technologies
echo =========================================================
color 06
echo.
echo Welcome! You can execute the following orders or talk with our AI N.O.V.A:
echo ----------------------------------------------------
echo What Do the Orders execute:
echo Order 66 - Log's you out of the user you're in. (DISABLED)
echo Order 32 - Opens Minecraft 1.8.8
echo Order 99 - Opens Roblox
echo Order 100 - Opens A GenAI Course - (IN PROGRESS)
echo Order 56 - Opens Fortnite (Disabled Because Fortnite's Game Location may be diffrent in your computer compared to the orignal script inside the Interface.)
echo Order 50 - Opens WhatsApp
echo Open Company App - Opens Our Main Company App (Google Sites)
echo This is still a work in progress.Things are expected to changes and bugs will be present
echo -------------------------------------------------------------------------------------------
echo Due to unknown bug's,the AI has been vaulted.
timeout /t 5 >nul

:loop
set /p command="> Team Video Technologies | Please Enter an Order or Ask a Question: "

:: Restricted Command: Whatsapp
if /i "%command%"=="Whatsapp" (
    if /i "%username_input%"=="Nintendo64" (
        start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://web.whatsapp.com/"
        exit
    ) else if /i "%username_input%"=="Blox_Gamer" (
        start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://web.whatsapp.com/"
        exit
    ) else (
        echo [ACCESS DENIED]: This command is restricted.
        timeout /t 2 >nul
        goto loop
    )
)

:: Restricted Command: Order 32 (Minecraft)
if /i "%command%"=="Order 32" (
    if /i "%username_input%"=="Nintendo64" (
        start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://eaglercraft.me/"
        exit
    ) else if /i "%username_input%"=="Blox_Gamer" (
        start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://eaglercraft.me/"
        exit
    ) else (
        echo [ACCESS DENIED]: This command is restricted.
        timeout /t 2 >nul
        goto loop
    )
)

if /i "%command%"=="Order 87" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe"
    exit
)

if /i "%command%"=="Order 66" (
    echo This was disabled since the Interface's Creation. due to a massive glicth causing the device to crash mutiplte times the next log in after this order's use.
)

if /i "%command%"=="Order 99" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://www.roblox.com/home"
    exit
)

if /i "%command%"=="Open Company App" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://sites.google.com/view/team-video/whats-new?authuser=0"
    exit
)

if /i "%command%"=="shutdown" (
    echo This will shutdown the Interface. Are you sure? Y/N
    set /p confirm="> "
    if /i "%confirm%"=="Y" (
        echo Shutting down the Interface...
        timeout /t 2 >nul
        echo Disconnecting the Interface from the Server.
        timeout /t 3 >nul
        exit
    ) else (
        echo Shutdown cancelled.
        timeout /t 1 >nul
        goto loop
    )
)

if /i "%command%"=="Order 100" (
    echo That Order is currently being worked on. Come back later to see if it's been added.
    timeout /t 2 >nul
    goto loop
)

if /i "%command%"=="Order 56" (
    echo That Order is Disabled by default. It can no longer be executed since April 8th, 2025.
    timeout /t 2 >nul
    goto loop
)


echo [ERROR 145]: Unrecognized Order. Please try again.
goto loop
