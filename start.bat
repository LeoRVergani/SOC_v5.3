@echo off
setlocal enabledelayedexpansion
title SOC IP Analyzer v4
cd /d "%~dp0"
color 0B

echo.
echo  ==========================================
echo       SOC IP Analyzer v5.3 - Check Point
echo  ==========================================
echo.

:: [1/4] PYTHON
echo  [1/4] Verificando Python...
python --version >nul 2>&1
if errorlevel 1 (
    echo  [AVISO] Python nao encontrado.
    echo.
    if exist "python-manager-26.0.msix" (
        echo  Iniciando instalador do Python...
        start "" "python-manager-26.0.msix"
        echo.
        echo  Instale o Python e execute este arquivo novamente.
    ) else (
        echo  Instale o Python em: https://python.org
    )
    echo.
    pause
    exit /b 1
)
echo  [OK] Python encontrado.
echo.

:: [2/4] API KEY
echo  [2/4] Verificando API Key...

if exist "config.txt" (
    echo  [OK] config.txt encontrado.
) else (
    echo.
    echo  ----------------------------------------
    echo   PRIMEIRA EXECUCAO
    echo  ----------------------------------------
    echo.
    echo  Acesse https://www.abuseipdb.com/account/api
    echo  e copie sua API Key.
    echo.
    set /p APIKEY="  Cole sua API Key e pressione ENTER: "

    if "!APIKEY!"=="" (
        echo  [ERRO] API Key vazia.
        pause
        exit /b 1
    )

    echo|set /p="!APIKEY!"> config.txt
    echo.
    echo  [OK] API Key salva em config.txt
    echo  Para trocar: delete config.txt e reabra.
)
echo.

:: [3/4] DEPENDENCIAS
echo  [3/4] Instalando dependencias...

set PKGS=flask flask-cors requests pytesseract opencv-python numpy Pillow

python -m pip install %PKGS% -q >nul 2>&1
if not errorlevel 1 (
    echo  [OK] Dependencias prontas.
    goto :start_server
)

pip install %PKGS% -q >nul 2>&1
if not errorlevel 1 (
    echo  [OK] Dependencias prontas.
    goto :start_server
)

pip3 install %PKGS% -q >nul 2>&1
if not errorlevel 1 (
    echo  [OK] Dependencias prontas.
    goto :start_server
)

echo  [ERRO] Nao foi possivel instalar dependencias.
echo  Tente: python -m pip install flask flask-cors requests pytesseract opencv-python numpy Pillow
pause
exit /b 1

:start_server
:: [4/4] SERVIDOR
echo.
echo  [4/4] Iniciando servidor...
echo.
echo  ==========================================
echo   Acesse: http://127.0.0.1:5000
echo   Para encerrar feche esta janela.
echo  ==========================================
echo.
echo  AVISO: Para OCR instale o Tesseract:
echo  https://github.com/UB-Mannheim/tesseract/wiki
echo.

timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:5000"
python server.py

pause
