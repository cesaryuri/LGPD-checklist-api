@echo off
:: ===== CONFIGURAÇÃO =====
set "PGUSER=postgres"
set "PGPASSWORD=suaSenhaBd" 
set "PGDB=bdchecklist"
set "CONTAINER_NAME=lgpd-checklist-api-db-1"
set "SQLFILE=InserirDadosTeste.sql"

echo.
echo ===================================================
echo   INICIANDO POPULACAO DO BANCO DE DADOS VIA DOCKER
echo ===================================================
echo.
echo Inserindo dados de teste no banco '%PGDB%' no container '%CONTAINER_NAME%'...

:: Executa o arquivo .sql injetando no psql de dentro do Docker (agora com a senha)
type "%~dp0%SQLFILE%" | docker exec -i -e PGPASSWORD=%PGPASSWORD% %CONTAINER_NAME% psql -U %PGUSER% -d %PGDB%

echo.
echo ===================================================
echo   SCRIPT FINALIZADO
echo ===================================================
echo.
pause