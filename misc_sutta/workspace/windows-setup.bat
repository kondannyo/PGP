@ECHO OFF
RMDIR /S /Q venv
virtualenv -p C:\Python35\python.exe venv
CALL venv/Scripts/activate
REM pip install -r requirements.txt
pip install --no-index --find-links=.pip-cache -r requirements.txt
