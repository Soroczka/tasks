call gradlew build
if "%ERRORLEVEL%" == "0" goto runbrowser
echo.
echo RUNCRUD has errors - breaking work
goto fail

:runbrowser
call "C:\Program Files\Mozilla Firefox\firefox.exe"
if "%ERRORLEVEL%" == "0" call http://localhost:8080/crud/v1/task/getTasks
echo Cannot open web browser
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.
