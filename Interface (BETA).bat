@echo off
color 0A
title Team Video Interface - 1.9.4 BETA

:: Smooth Loading Screen
cls
echo Initializing The Interface...
ping localhost -n 4 >nul
echo Connecting to NOVA mainframe...
ping localhost -n 4 >nul
echo Loading core modules...
ping localhost -n 3 >nul
echo Loading Interface...
ping localhost -n 4 >nul
echo Booting up N.O.V.A...
ping localhost -n 5 >nul
echo Finalizing startup...
ping localhost -n 10 >nul
cls

color CF
echo.
echo ==========================================================
echo    NOTE: CHECK DAILY UPDATES ON OUR APP BELOW           
echo    https://sites.google.com/view/team-video/whats-new?  
echo ==========================================================
echo.
echo PLEASE NOTE:
echo You need to keep the interface up to date. To update:
echo - Delete this version
echo - Download the latest version from the site
echo - Follow the steps from the Google Docs link used to install
echo.
echo Press ENTER KEY to start the terminal...
pause >nul
color 0A

:: Fancy Text Header
echo ==================================================
echo         [ TEAM VIDEO INTERFACE - 1.9.4 BETA INPROVED ]
echo        NOVA ENTERPRISES ^| Team Video Technologies  
echo ==================================================
color 06
echo.
echo Welcome! You can execute the following orders or talk with our AI N.O.V.A.:
echo ----------------------------------------------------
echo What you can ask it:
echo 1. What is your name?
echo 2. What is the weather?
echo 3. What is the time?
echo 4. What can I do here?
echo 5. Why is this on my device?
echo 6. Are you really AI?
echo 7. Im bored.got ideas?
echo 8. What is my location?
echo 9. What do i have on my schedule?
echo 10. Who am i logged in as in this interface?
echo 11. What's the Temperature outside? - COMING SOON
echo -------------------------------------------------------------------------------------------
echo What Do the Orders execute:
echo 1. Order 66 - Log's you out of the user you're in. (DISABLED)
echo 2. Order 32 - Opens Minecraft 1.8.8
echo 3. Order 99 - Opens Roblox
echo 4. Order 100 - Opens GenAI Course - (IN PROGRESS)
echo 5. Order 56 - Opens Fortnite (Device doesn't support the game. Disabled.)
echo 6. Order 50 - Opens WhatsApp
echo 7. Open Company App - Opens Our Main Company App (Google Sites)
echo This is still a work in progress.Things are expected to changes and bugs will be present
echo LAST UPDATED ON: 23rd April 2025
echo -------------------------------------------------------------------------------------------
timeout /t 5 >nul

:loop
set /p command="> Team Video Technologies | Please Enter an Order or Ask a Question: "

if /i "%command%"=="Order 50" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://web.whatsapp.com/"
    exit
)

if /i "%command%"=="Order 32" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://eaglercraft.me/"
    exit
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

:: Q&A Responses
if /i "%command%"=="What is your name?" (
    echo I am N.O.V.A = Neural Operational Virtual Assistant, the AI Assistant helping and powering Team Video Technologies, or TVT for short.
    timeout /t 2 >nul
    goto loop
)

if /i "%command%"=="What is the weather?" (
    echo The current weather is sunny with a slight breeze.
    timeout /t 2 >nul
    goto loop
)

if /i "%command%"=="What is the time?" (
    echo The current time is %time%.
    timeout /t 2 >nul
    goto loop
)

if /i "%command%"=="Why is this on my device?" (
    echo This is on your device for a reason. Check the file on your desktop screen labeled: Team Video Files
    timeout /t 2 >nul
    goto loop
)

if /i "%command%"=="Are you really AI?" (
    echo I'm not truely AI.Im Just a piece of code designed to answer specific questions from my coding.
    timeout /t 2 >nul
    goto loop
)

if /i "%command%"=="What can I do here?" (
    echo You can execute orders or ask questions to interact with the interface.
    timeout /t 2 >nul
    goto loop
)

if /i "%command%"=="Im bored.got ideas?" (
    echo You can play Roblox, Minecraft, or just watch anime.
    echo If you're into anime though, I recommend "Alya Sometimes Hides Her Feelings in Russian". ratings show its a nice series to watch.
    timeout /t 3 >nul
    goto loop
)


if /i "%command%"=="What is my location?" (
    echo I cant tell or know your location due to security reasons.
    echo Your location is your private information,and we here at Team Video dont take your information like that and take pride in your security and personal space.
    timeout /t 3 >nul
    goto loop
)

if /i "%command%"=="What do i have on my schedule?" (
    echo You Currently have the following on your schedule:
    echo =======================================================
    echo Friday 1:30PM till 4:30PM - Twitch Stream
    echo Thursday - Post a Youtube Video
    echo Monday and Tuesday - Post both a Tiktok and Youtube Video
    echo =======================================================
    echo There is no other thing's in your schedule that i know of.
    timeout /t 3 >nul
    goto loop
)


if /i "%command%"=="Who am i logged in as in this interface?" (
    echo ERROR GENERATING RESPONSE
    timeout /t 3 >nul
    goto loop
)

echo [ERROR 145]: Unrecognized Order or Question. Please try again.
goto loop
