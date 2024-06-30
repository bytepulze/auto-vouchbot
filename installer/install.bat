@echo off
setlocal

REM Define repository URL
set REPO_URL=https://github.com/bytepulze/auto-vouchbot.git

REM Clone the repository
echo Cloning repository...
git clone %REPO_URL%

cd discord-auto-voucher

REM Create necessary directories
echo Creating directories...
mkdir data

REM Install required Python packages
echo Installing required Python package...
pip install requests
pip install random
pip install json

REM Create placeholder config.json
echo Creating placeholder config.json...
echo { > data\config.json
echo    "channel_id": "YOUR_CHANNEL_ID" >> data\config.json
echo } >> data\config.json

REM Create placeholder words.txt
echo Creating placeholder words.txt...
echo Awesome! > data\words.txt
echo Great service! >> data\words.txt
echo Highly recommend! >> data\words.txt

REM Create placeholder tokens.txt
echo Creating placeholder tokens.txt...
echo xxxxxxx > data\tokens.txt
echo yyyyyyy >> data\tokens.txt
echo zzzzzzz >> data\tokens.txt

echo Installation complete. Please edit data\config.json, data\words.txt, and data\tokens.txt with your details.

endlocal
pause
