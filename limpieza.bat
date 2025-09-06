@echo off
setlocal enabledelayedexpansion

:: Eliminar archivos temporales (equivalente al rm del script original)
for %%i in (*.err *.nav *.snm *.out *.vrb *.py *.dvi *.ps *.eps *.aux *.log *.toc *.mtc* *.synctex.gz *.ptc *.idx *.maf *.bbl *.thm *.dep *.gz *.listing *concordance.tex) do (
    if exist "%%i" del /q "%%i" >nul 2>&1
)

:: Eliminar archivos .eps y .aux en subdirectorios
for /r %%i in (*.eps *.aux) do (
    if exist "%%i" del /q "%%i" >nul 2>&1
)

:: Eliminar directorios _minted-*
for /d %%i in (_minted-*) do (
    if exist "%%i" rmdir /s /q "%%i" >nul 2>&1
)

:: Crear directorio pdf si no existe
if not exist ".\pdf\" (
    mkdir ".\pdf"
    echo Directorio pdf creado.
) else (
    echo Sí, sí existe.
)

:: Crear directorio bak si no existe
if not exist ".\bak\" (
    mkdir ".\bak"
    echo Directorio bak creado.
) else (
    echo Sí, sí existe.
)

:: Crear directorio img si no existe
if not exist ".\img\" (
    mkdir ".\img"
    echo Directorio img creado.
) else (
    echo Sí, sí existe.
)

:: Crear directorio image si no existe
if not exist ".\image\" (
    mkdir ".\image"
    echo Directorio image creado.
) else (
    echo Sí, sí existe.
)

:: Mover archivos PDF al directorio pdf
for %%i in (*.pdf) do (
    if exist "%%i" move "%%i" ".\pdf\" >nul 2>&1
)

:: Mover archivos BAK al directorio bak
for %%i in (*.bak) do (
    if exist "%%i" move "%%i" ".\bak\" >nul 2>&1
)

:: Mover archivos LYX~ al directorio bak
for %%i in (*.lyx~) do (
    if exist "%%i" move "%%i" ".\bak\" >nul 2>&1
)

:: Mover archivos de imagen al directorio img
for %%i in (*.png *.jpg *.svg) do (
    if exist "%%i" move "%%i" ".\img\" >nul 2>&1
)

:: Copiar archivos PNG y JPG al directorio image
for %%i in (*.png *.jpg) do (
    if exist "%%i" copy "%%i" ".\image\" >nul 2>&1
)

:: Cambiar al directorio pdf y copiar archivos específicos a img
if exist ".\pdf\" (
    pushd ".\pdf"
    for %%i in (conejos.pdf footerscroll.pdf hanoi.pdf headerscroll.pdf logo-ca.pdf suc1.pdf suc2.pdf) do (
        if exist "%%i" copy "%%i" "..\img\" >nul 2>&1
    )
    popd
)

echo Limpieza completada.
pause