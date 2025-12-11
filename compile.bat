@echo off
chcp 65001 >nul
echo Compiling Flower Shop Server...
g++ -o server.exe server.cpp -lws2_32
if %errorlevel% == 0 (
    echo Compilation successful!
    echo Starting server...
    echo Open: http://localhost:8080
    echo.
    server.exe
) else (
    echo Compilation failed!
    pause
)