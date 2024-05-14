REM ----------------------------------------------------------------------------
REM Script: VLC Basic Digital Signage
REM Version: 1.0
REM Author: Mike Galvin
REM Contact: digressive@outlook.com
REM Date: 2019-08-19
REM ----------------------------------------------------------------------------

SET "media=C:\foo\media"

:Start
cd %~dp0
DEL /F /Q media-playlist.m3u
FOR /F "tokens=1 delims=" %%A IN ('DIR /B %media%') DO ECHO %media%\%%A >> media-playlist.m3u
START /B /wait vlc.exe media-playlist.m3u -L -f --no-osd --no-qt-fs-controller
GOTO Start
