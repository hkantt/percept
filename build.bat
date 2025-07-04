@echo off

cmake -S . -B build
cmake --build build --config Release

for /f %%a in ('wmic os get localdatetime ^| find "."') do set dt=%%a

set year=%dt:~2,2%
set month=%dt:~4,2%
set day=%dt:~6,2%
set hour=%dt:~8,2%
set minute=%dt:~10,2%
set second=%dt:~12,2%

set TIMESTAMP=%day%%month%%year%_%hour%%minute%%second%

echo Creating release percept.pyd in release ...
copy /Y "build\Release\percept.pyd" "release\percept.pyd"

echo Creating backup percept_%TIMESTAMP%.pyd in backups ...
copy /Y "build\Release\percept.pyd" "backups\percept_%TIMESTAMP%.pyd"
exit /b