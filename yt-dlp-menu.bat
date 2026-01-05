@echo off
REM ============================================================
REM  YT-DLP Interactive Downloader
REM
REM  Company  : HUR-AI-GEM
REM  Author   : SSS
REM  Year     : 2026
REM
REM  License  : Apache License
REM             Version 2.0, January 2004
REM             http://www.apache.org/licenses/
REM
REM  Description:
REM  Interactive batch script for yt-dlp providing:
REM   - Video download (no subtitles)
REM   - Video download with embedded subtitles (MKV)
REM   - Audio-only download (MP3)
REM
REM  Requirements:
REM   - yt-dlp.exe must be in the SAME folder as this script
REM   - ffmpeg must be located at:
REM       ./ffmpeg/bin/ffmpeg.exe
REM
REM  Example folder structure:
REM
REM   yt-dlp-menu.bat
REM   yt-dlp.exe
REM   ffmpeg\
REM     └─ bin\
REM        └─ ffmpeg.exe
REM
REM ============================================================


set /p URL=Enter video URL: 

echo.
echo Select option:
echo [1] Download video only (no subtitles)
echo [2] Download video with embedded subtitles (MKV)
echo [3] Download audio only (MP3)
echo.

set /p OPTION=Enter choice (1-3): 

if "%OPTION%"=="1" goto VIDEO_ONLY
if "%OPTION%"=="2" goto VIDEO_SUBS
if "%OPTION%"=="3" goto AUDIO_ONLY

echo Invalid option.
goto END

:VIDEO_ONLY
echo.
echo Downloading video (no subtitles)...
yt-dlp --no-check-certificates -f "bv*+ba/b" --ffmpeg-location ".\ffmpeg\bin" --merge-output-format mp4 "%URL%"
goto END

:VIDEO_SUBS
echo.
echo Listing available subtitles...
echo.
yt-dlp --no-check-certificates --list-subs "%URL%"

echo.
echo NOTE:
echo - If subtitles are auto-generated, use language like en-US, tr-TR, fr-CA
echo - For normal subtitles, use en, tr, fr etc.
echo.

set /p SUBLANG=Enter subtitle language code: 

echo.
echo Downloading video with embedded subtitles...
yt-dlp --no-check-certificates --ffmpeg-location ".\ffmpeg\bin" -f "bv*+ba/b" ^
  --merge-output-format mkv ^
  --write-subs --write-auto-subs ^
  --sub-lang %SUBLANG% ^
  --convert-subs srt ^
  --embed-subs ^
  "%URL%"

goto END

:AUDIO_ONLY
echo.
echo Downloading audio as MP3...
yt-dlp --no-check-certificates --ffmpeg-location ".\ffmpeg\bin" -x --audio-format mp3 --audio-quality 0 "%URL%"
goto END

:END
echo.
echo Done.
pause
end
