@echo off
setlocal enableextensions disabledelayedexpansion

rem Definir la carpeta de destino para los archivos copiados
set "destino=C:\ArchivosRecopilados"

rem Crear la carpeta de destino si no existe
if not exist "%destino%" mkdir "%destino%"

rem Copiar archivos de tipos específicos desde el disco C: (ajustar según sea necesario)
rem Es posible que necesites ejecutar este script como administrador para acceder a todas las carpetas
for /r C:\ %%f in (*.jpg, *.png, *.txt, *.pdf, *.doc, *.xlsx) do (
    echo Copiando "%%f"
    copy "%%f" "%destino%"
)

echo.
echo Copia completada.
pause
