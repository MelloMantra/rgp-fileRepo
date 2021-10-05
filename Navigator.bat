@echo off
title "RGP Navigator"
SET console=blank
SET game=blank
cd Contents
cd library
:consoleQuery
ECHO *** RetroGamePackage Navigator Program ***
echo Type "e" to exit this program.
SET /p console="Select console: NES, GBA, GBC, Arcade, SNES, or N64: "
PAUSE
IF %console%==NES goto nesStart
IF %console%==SNES goto snesStart
IF %console%==GBA goto gbaStart
IF %console%==GBC goto gbcStart
IF %console%==Arcade goto arcadeStart
IF %console%==N64 goto n64Start
if %console%==e goto exitQuery
color 04
echo ERROR: User did not enter a valid console name. Please try again.
color 07
PAUSE
clr
goto consoleQuery
::                                  THIS IS WHERE NES STARTS
:nesStart
clr
cd NES
:nesQuery
echo *** RetroGamePackage Navigator Program ***
echo Selected console: NES
echo Type "b" to go back.
SET /p game="Select game: smb, smb2, smb3, Metroid, Punch-Out: "
PAUSE
if %game%==smb goto smbStart
if %game%==smb2 goto smb2Start
if %game%==smb3 goto smb3Start
if %game%==Metroid goto mtdStart
if %game%==Punch-Out goto poStart
if %game%==b goto consoleQuery
color 04
echo ERROR: User did not enter a valid game name. Please try again.
color 07
PAUSE
clr
goto nesQuery
:smbStart
echo Launching %game% for the %console%...
start %game%
exit
:smb2Start
echo Launching %game% for the %console%...
start %game%
exit
:smb3Start
echo Launching %game% for the %console%...
start %game%
exit
:mtdStart
echo Launching %game% for the %console%...
start %game%
exit
:poStart
echo Launching %game% for the %console%...
start %game%
exit
::                                    THIS IS WHERE GBA STARTS
:gbaStart
clr
cd GBA
:gbaQuery
echo *** RetroGamePackage Navigator Program ***
echo Selected console: GBA
echo Type "b" to go back.
SET /p game="Select game: PokemonRuby, KirbyNiD, SuperMarioWorldGBA : "
PAUSE
if "%game%==SuperMarioWorldGBA" goto smwStart
if "%game%==PokemonRuby" goto pokemonStart
if "%game%==KirbyNiD" goto kirbyStart
if %game%==b goto consoleQuery
color 04
echo ERROR: User did not enter a valid game name. Please try again.
color 07
PAUSE
clr
goto gbaQuery
:kirbyStart
echo Launching %game% for the %console%...
start %game%
exit
:smwStart
echo Launching %game% for the %console%...
start %game%
exit
:pokemonStart
echo Launching %game% for the %console%...
start %game%
exit
::                                     THIS IS WHERE GBC STARTS
:gbcStart
clr
cd GBC
:gbcQuery
echo *** RetroGamePackage Navigator Program ***
echo Selected console: GBC
set /p game="Only game available for this console is  LoZ: LADX. Type LADX to confirm or b to go back.
if %game%==LADX goto ladxStart
if %game%==b goto consoleQuery
color 04
echo ERROR: User did not enter a valid value. Please try again.
color 07
PAUSE
clr
goto gbcQuery
:ladxStart
echo Launching %game% for the %console%...
start %game%
exit
::                                      THIS IS WHERE ARCADE STARTS
:arcadeStart
clr
cd NES
:arcadeQuery
echo *** RetroGamePackage Navigator Program ***
echo Selected console: Arcade
echo Type "b" to go back.
SET /p game="Select game: Tetris, Pac-Man, Galaga: "
PAUSE
if %game%==Tetris goto tetrisStart
if %game%==Pac-Man goto pmStart
if %game%==Galaga goto glgaStart
if %game%==b goto consoleQuery
color 04
echo ERROR: User did not enter a valid game name. Please try again.
color 07
PAUSE
clr
goto arcadeQuery
:tetrisStart
echo Launching %game% for the %console%...
start %game%
exit
:pmStart
echo Launching %game% for the %console%...
start %game%
exit
:glgaStart
echo Launching %game% for the %console%...
start %game%
exit
::                                          THIS IS WHERE N64 STARTS
:n64Start
clr
cd N64
:n64Query
echo *** RetroGamePackage Navigator Program ***
echo Selected console: N64
echo Type "b" to go back.
SET /p game="Select game: SuperMario64, MarioKart64: "
PAUSE
if "%game%==SuperMario64" goto sm64Start
if "%game%==MarioKart64" goto mk64Start
if %game%==b goto consoleQuery
color 04
echo ERROR: User did not enter a valid game name. Please try again.
color 07
PAUSE
clr
goto n64Query
:sm64Start
echo Launching %game% for the %console%...
start %game%
exit
:mk64Start
echo Launching %game% for the %console%...
start %game%
exit
:exitQuery
choice /c yn /m "Are you sure you want to exit? (Y/N)"
if %errorlevel% equ 1 exit
if %errorlevel% equ 2 goto consoleQuery
::woohoo