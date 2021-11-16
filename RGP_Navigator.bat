@echo off
set packPath=%~dp0
color 09
set /a fun=%random% * 1000 / 32768 + 1
if %fun%==69 goto lolTitle
echo.
echo      ###############             ###############          ###############
echo      ##            ###         ###             ###        ##            ###
echo      ##             ###       ###                         ##             ###
echo      ##             ###       ###                         ##             ###
echo      ##            ###        ##                          ##            ###
echo      ###############          ###           #######       ############### 
echo      ##           ###         ###              ###        ##
echo      ##             ###        ###             ###        ##
echo      ##              ###         ###############          ##
echo.
echo.
echo                             Copyright RGP Products, 2021
echo                                     VER. 1.8
echo.
pause
cls
goto titleDone
:lolTitle
echo.
echo     ###                     ######            ###
echo     ###                  ###      ###         ###
echo     ###                ###          ###       ###
echo     ###               ###            ###      ###
echo     ###               ###            ###      ###
echo     ###               ###            ###      ###
echo     ###                ###          ###       ###
echo     ###                  ###      ###         ###
echo     ###############         ######            ###############
echo.
echo.
echo                   Copyright LOL Products, 2021
echo                           VER. 69420 lmao
echo.
pause
cls
:titleDone
cd Contents && cd assets
echo User starts nav program on %date% at %time%.>> log.txt
title RGP Navigator
SET console=blank
SET game=blank
cls
:consoleQuery
cd "%packPath%\Contents\library\"
color 09
ECHO *** RetroGamePackage Navigator Program ***
echo.
echo "a" for advanced options, "h" for help, or "e" to exit.
echo Consoles:
echo 1: NES
echo 2: GBA
echo 3: GBC
echo 4: N64
echo 5: Arcade
SET /p console="Select console: "
PAUSE
IF %console%==1 set console=NES && goto nesStart
IF %console%==2 set console=GBA && goto gbaStart
IF %console%==3 set console=GBC && goto gbcStart
IF %console%==4 set console=N64 && goto n64Start
IF %console%==5 set console=Arcade && goto arcadeStart
if %console%==e goto exitQuery
if %console%==h goto help
if %console%==a goto advanced
color 04
echo ERROR: User did not enter a valid console name. Please try again.
PAUSE
cls
goto consoleQuery
:advanced
cls && echo *** RetroGamePackage Navigator Program ***
echo.
echo "p" for patch notes...."w" for website...."l" for log...."v" for promotional video...."q" for QR code...."b" to go back.
echo.
set /p advOption="Selection: "
if %advOption%==p (
    cd "%packPath%\Contents\assets\"
    start patch_notes.txt && echo User accesses patch notes on %date% at %time%.>> log.txt
    cls && goto consoleQuery
)
if %advOption%==w (
    cd "%packPath%\Contents\assets\"
    start website.lnk && echo User accesses website on %date% at %time%.>> log.txt
    cls && goto consoleQuery
)
if %advOption%==l (
    cd "%packPath%\Contents\assets\"
    start log.txt && echo User accesses log on %date% at %time%.>> log.txt
    cls && goto consoleQuery
)
if %advOption%==v (
    cd "%packPath%\Contents\assets\"
    start pVideo.mp4 && echo User accesses promotional video on %date% at %time%.>> log.txt
    cls && goto consoleQuery
)
if %advOption%==q (
    cd "%packPath%\Contents\assets\"
    start qrcode.png && echo User accesses QR code on %date% at %time%.>> log.txt
    cls && goto consoleQuery
)
if %advOption%==b goto consoleQuery
color 04
echo ERROR: User did not enter valid option value.
pause
goto advanced
::                                       THIS IS WHERE NES STARTS
:nesStart
cls
cd NES
:nesQuery
color 09
echo *** RetroGamePackage Navigator Program ***
echo.
echo Selected console: NES
echo Type the corresponding number to launch a game.
echo Type "b" to go back.
echo 1: SMB
echo 2: SMB2
echo 3: SMB3
echo 4: Metroid
echo 5: Punch-Out!!
SET /p game="Select game: "
PAUSE
if %game%==1 set game=SMB.nes && goto nesgameStart
if %game%==2 set game=SMB2.nes && goto nesgameStart
if %game%==3 set game=SMB3.nes && goto nesgameStart
if %game%==4 set game=Metroid.nes && goto nesgameStart
if %game%==5 set game=Punch-Out.nes && goto nesgameStart
if %game%==b cd.. && goto consoleQuery
color 04
echo ERROR: User did not enter a valid game number. Please try again.
PAUSE
cls
goto nesQuery
:nesgameStart
echo Launching %game% for the %console%...
cd "%packPath%\Contents\library\NES\" && start /wait %game%
cd "%packPath%\Contents\assets\" && echo User plays %game% for the NES on %date% at %time%.>> log.txt
cls && goto consoleQuery
::                                            THIS IS WHERE GBA STARTS
:gbaStart
cls
cd GB
:gbaQuery
color 09
echo *** RetroGamePackage Navigator Program ***
echo.
echo Selected console: GBA
echo Type the corresponding number to launch a game.
echo Type "b" to go back.
echo 1: Pokemon Sapphire
echo 2: Kirby: Nightmare in Dreamland
SET /p game="Select game: "
PAUSE
if %game%==1 set game=PokemonSapphire.gba && goto gbagameStart
if %game%==2 set game=KirbyNiD.gba && goto gbagameStart
if %game%==b cd.. && goto consoleQuery
04
echo ERROR: User did not enter a valid game number. Please try again.
PAUSE
cls
goto gbaQuery
:gbagameStart
echo Launching %game% for the %console%...
cd "%packPath%\Contents\library\GB\" && start /wait %game%
cd "%packPath%\Contents\assets\" && echo User plays %game% for the GBA on %date% at %time%.>> log.txt
cls && goto consoleQuery
::                                                THIS IS WHERE GBC STARTS
:gbcStart
cls
cd GB
:gbcQuery
color 09
echo *** RetroGamePackage Navigator Program ***
echo.
echo Selected console: GBC
set /p game="Only game available for this console is LoZ: LADX. Type LADX to confirm or b to go back. "
if %game%==LADX set game=LADX.gbc && goto ladxStart
if %game%==b cd.. && goto consoleQuery
color 04
echo ERROR: User did not enter a valid value. Please try again.
PAUSE
cls
goto gbcQuery
:ladxStart
echo Launching %game% for the %console%...
cd "%packPath%\Contents\library\GB\" && start /wait %game%
cd "%packPath%\Contents\assets\" && echo User plays %game% for the GBC on %date% at %time%.>> log.txt
cls && goto consoleQuery
::                                               THIS IS WHERE ARCADE STARTS
:arcadeStart
cls
cd NES
:arcadeQuery
color 09
echo *** RetroGamePackage Navigator Program ***
echo.
echo Selected console: Arcade
echo Type the corresponding number to launch a game.
echo Type "b" to go back.
echo 1: Tetris
echo 2: Pac-Man
echo 3: Galaga
SET /p game="Select game: "
PAUSE
if %game%==1 set game=Tetris.nes && goto nesgameStart
if %game%==2 set game=Pac-Man.nes && goto nesgameStart
if %game%==3 set game=Galaga.nes && goto nesgameStart
if %game%==b cd.. && goto consoleQuery
color 04
echo ERROR: User did not enter a valid game number. Please try again.
PAUSE
cls
goto arcadeQuery
::                                                   THIS IS WHERE N64 STARTS
:n64Start
cls
cd N64
:n64Query
color 09
echo *** RetroGamePackage Navigator Program ***
echo.
echo Selected console: N64
echo Type the corresponding number to launch a game.
echo Type "b" to go back.
echo 1: Super Mario 64
echo 2: Mario Kart 64
SET /p game="Select game: "
PAUSE
if %game%==1 set game=SuperMario64.z64 && goto n64gameStart
if %game%==2 set game=MarioKart64.z64 && goto n64gameStart
if %game%==b cd.. && goto consoleQuery
color 04
echo ERROR: User did not enter a valid game name. Please try again.
PAUSE
cls
goto n64Query
:n64gameStart
echo Launching %game% for the %console%...
cd "%packPath%\Contents\library\N64\" && start /wait %game%
cd "%packPath%\Contents\assets\" && echo User plays %game% for the N64 on %date% at %time%.>> log.txt
cls && goto consoleQuery
:exitQuery
choice /c yn /m "Are you sure you want to exit? (Y/N)"
if %errorlevel%==1 goto Leave
if %errorlevel%==2 cls && goto consoleQuery
:Leave
cd "%packPath%\Contents\assets\"
echo User exits nav program on %date% at %time%.>> log.txt
exit
:help
cd "%packPath%\Contents\assets\" && start /wait troubleshooting.txt
echo User accesses troubleshooting manual on %date% at %time%.>> log.txt && start /wait troubleshooting.txt
goto consoleQuery
