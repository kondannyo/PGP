echo

SET /P PaliFile=Source Text(file in this directory):
copy %PaliFile% "workspace\pali.txt"
Set /P OutputName=Output filename(will_append_csv):
cd workspace\

H:\Programs\WinPython-64bit-2.7.12.2Zero\python-2.7.12.amd64\python.exe %~dp1pali-to-wordlist.py %~dp1pali.txt %~dp1output.txt

set fileoutput=%OutputName%.txt
cd..

copy workspace\output.txt %fileoutput%
pause

