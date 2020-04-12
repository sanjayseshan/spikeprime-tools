ECHO OFF
TITLE Installing
CLS
ECHO Installing the SPIKE PRIME tools for VS CODE....
PAUSE
mkdir C:\spiketools
xcopy /E /I spiketools\* C:\spiketools
xcopy %appdata%\..\Local\Programs\Python\Python38-32\python.exe %appdata%\..\Local\Programs\Python\Python38-32\python3.exe
cd C:\spiketools
pip3 install -r requirements.txt
PAUSE