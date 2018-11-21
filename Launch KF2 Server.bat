@ECHO OFF
REM SteamCmd +login anonymous +force_install_dir ./kf2server +app_update 232130 validate +exit

ECHO.
ECHO Choose Difficulty
ECHO 0 Normal
ECHO 1 Hard
ECHO 2 Suicidal
ECHO 3 Hell on Earth
ECHO.
set /p DIFFICULTY=[Default is 3] 

ECHO.
ECHO Choose Game Length
ECHO 0 Short (4 Waves)
ECHO 1 Medium (7 Waves)
ECHO 2 Long (10 Waves)
ECHO.
set /p GAMELENGTH=[Default is 0] 

IF "%DIFFICULTY%" == "" SET DIFFICULTY=3
IF "%GAMELENGTH%" == "" SET GAMELENGTH=0

start C:\SteamCMD\kf2server\Binaries\win64\kfserver KF-ZedLanding?Game=KFGameContent.KFGameInfo_Endless?Difficulty=%DIFFICULTY%.0000?GameLength=%GAMELENGTH%
