ECHO OFF
TITLE Installing
CLS
ECHO Installing the SPIKE PRIME tools for VS CODE....
PAUSE
mkdir C:\spiketools
xcopy /E /I spiketools\* C:\spiketools
cd C:\spiketools
pip3 install -r requirements.txt
PAUSE
