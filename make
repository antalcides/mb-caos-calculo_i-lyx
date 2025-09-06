@echo off
setlocal

rem # Script para compilar documentos con mb-coa's (equivalente a Makefile)

rem Define las variables de LaTeX
set LATEX=pdflatex
set LATEX_OPTS=-shell-escape

rem Maneja los argumentos de la línea de comandos
IF "%~1"=="" GOTO :all_action
IF /I "%~1"=="all" GOTO :all_action
IF /I "%~1"=="clean" GOTO :clean_action
IF /I "%~1"=="distclean" GOTO :distclean_action
IF /I "%~1"=="help" GOTO :help_action

rem Mensaje de uso si el argumento no es reconocido
echo.
echo Uso: %~nx0 [all^|clean^|distclean^|help]
echo.
GOTO :EOF

:all_action
rem Compila calculo-dif.tex a calculo-dif.pdf
echo Compilando calculo-dif.tex a calculo-dif.pdf...
%LATEX% %LATEX_OPTS% calculo-dif.tex
IF %ERRORLEVEL% NEQ 0 (
    echo Error durante la compilacion de calculo-dif.tex.
    GOTO :EOF
)
echo Compilacion completada.
GOTO :EOF

:clean_action
rem Limpia los archivos intermedios generados por LaTeX 
echo Limpiando archivos intermedios...
rem Equivalente a: rm -f *.aux *.log *.out *.toc *.tmp *.out
del /Q *.aux 2>NUL
del /Q *.log 2>NUL
del /Q *.out 2>NUL
del /Q *.toc 2>NUL
echo Archivos intermedios limpios.
GOTO :EOF

:distclean_action
rem Realiza una limpieza profunda, eliminando tambien el PDF final
echo Realizando limpieza profunda...
rem Primero ejecuta la accion de limpieza normal
call :clean_action
rem Despues elimina el PDF
del /Q *.pdf 2>NUL
echo Limpieza profunda completada.
GOTO :EOF

:help_action
rem Muestra un mensaje de ayuda
echo.
echo Este script replica la funcionalidad del Makefile proporcionado.
echo.
echo Comandos disponibles:
echo   %~nx0             - Por defecto: Compila calculo-dif.tex (equivalente a 'all')
echo   %~nx0 all         - Compila calculo-dif.tex
echo   %~nx0 clean       - Elimina los archivos auxiliares de compilacion (.aux, .log, .out, .toc)
echo   %~nx0 distclean   - Elimina todos los archivos limpiados por 'clean' y el archivo PDF generado (.pdf)
echo   %~nx0 help        - Muestra este mensaje de ayuda
echo.
GOTO :EOF

endlocal