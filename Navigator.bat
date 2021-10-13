@echo off
color 09
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
echo                                     VER. 1.4.2
echo.
pause
cls
set /p username="Input username (ex. s123456): "
cd Contents && cd assets
echo User starts nav program on %date% at %time%.>> log.txt
title RGP Navigator
SET console=blank
SET game=blank
cd library && cls
:consoleQuery
cd "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\library\"
color 09
ECHO *** RetroGamePackage Navigator Program ***
echo.
echo Type "e" to exit this program.                                                                     "p" for patch notes
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
if %console%==p (
cd.. && cd assets
start patch_notes.txt && echo User accesses patch notes on %date% at %time%.>> log.txt
cd.. && cd library
cls && goto consoleQuery
)
color 04
echo ERROR: User did not enter a valid console name. Please try again.
PAUSE
cls
goto consoleQuery
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
start /wait "Nestopia" "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\emuStore\Nestopia\nestopia.exe" "%game%"
cd "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\assets\" && echo User plays %game% for the NES on %date% at %time%.>> log.txt
cls && goto consoleQuery
::                                            THIS IS WHERE GBA STARTS
:gbaStart
cls
cd GBA
:gbaQuery
color 09
echo *** RetroGamePackage Navigator Program ***
echo.
echo Selected console: GBA
echo Type the corresponding number to launch a game.
echo Type "b" to go back.
echo 1: Super Mario World (GBA)
echo 2: Pokemon Ruby
echo 3: Kirby: Nightmare in Dreamland
SET /p game="Select game: "
PAUSE
if %game%==1 set game=SuperMarioWorldGBA.gba && goto gbagameStart
if %game%==2 set game=PokemonRuby.gba && goto gbagameStart
if %game%==3 set game=KirbyNiD.gba && goto gbagameStart
if %game%==b cd.. && goto consoleQuery
04
echo ERROR: User did not enter a valid game number. Please try again.
PAUSE
cls
goto gbaQuery
:gbagameStart
echo Launching %game% for the %console%...
start /wait "mGBA" "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\emuStore\mGBA\mGBA.exe" "%game%"
cd "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\assets\" && echo User plays %game% for the GBA on %date% at %time%.>> log.txt
cls && goto consoleQuery
::                                                THIS IS WHERE GBC STARTS
:gbcStart
cls
cd GBC
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
start /wait "BGB" "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\emuStore\BGB\bgb.exe" "%game%"
cd "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\assets\" && echo User plays %game% for the GBC on %date% at %time%.>> log.txt
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
start /wait "1964" "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\emuStore\1964.exe" "%game%"
cd "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\assets\" && echo User plays %game% for the N64 on %date% at %time%.>> log.txt
cls && goto consoleQuery
:exitQuery
choice /c yn /m "Are you sure you want to exit? (Y/N)"
if %errorlevel% equ 1 goto Leave
if %errorlevel% equ 2 cls && goto consoleQuery
:Leave
cd "C:\Users\%username%\OneDrive - Chandler Unified School District #80\RetroGamePackage\Starter_Pack\Contents\assets\"
echo User exits nav program on %date% at %time%.>> log.txt
exit