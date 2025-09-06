@echo off
setlocal

:: # Archivo .bat para compilar documentos con mb-caos (equivalente de Makefile para Windows)

:: --- Configuración ---
:: Define el compilador LaTeX. Asegúrate de que 'pdflatex' esté en tu PATH del sistema.
:: Si no lo está, puedes especificar la ruta completa, por ejemplo:
:: set "LATEX=C:\texlive\2023\bin\windows\pdflatex.exe"
set "LATEX=pdflatex"

:: Opciones para el compilador LaTeX.
set "LATEX_OPTS=-shell-escape"

:: Nombre del archivo LaTeX principal (sin extensión).
set "MAIN_TEX_FILE=calculo-dif.tex"

:: Nombre del archivo PDF de salida.
set "OUTPUT_PDF_FILE=calculo-dif.pdf"

:: --- Funciones (Etiquetas) ---

:build
    echo.
    echo Compilando %MAIN_TEX_FILE% a %OUTPUT_PDF_FILE%...
    echo Ejecutando %LATEX% %LATEX_OPTS% %MAIN_TEX_FILE%
    :: Nota importante: El Makefile original solo ejecuta pdflatex una vez.
    :: Para documentos LaTeX complejos que incluyen referencias cruzadas,
    :: tablas de contenido, bibliografías, etc., es común y a menudo necesario
    :: ejecutar pdflatex dos o tres veces para resolver todas las referencias.
    :: Si tu documento no se compila correctamente a la primera, considera
    :: ejecutar la misma línea de compilación varias veces aquí.
    %LATEX% %LATEX_OPTS% %MAIN_TEX_FILE%
    if errorlevel 1 (
        echo Error: La compilación de LaTeX falló.
        goto :eof
    )
    echo.
    echo Compilación completada. Verifique %OUTPUT_PDF_FILE%.
    goto :eof

:clean
    echo.
    echo Limpiando archivos temporales generados por LaTeX y GeminiTeX...
    :: 'del /Q' elimina archivos de forma silenciosa (sin pedir confirmación).
    :: '2>nul' redirige los errores (como "Archivo no encontrado") a la nada,
    :: evitando que se muestren mensajes de error si un archivo no existe.
    del /Q "*.aux" "*.log" "*.out" "*.toc" "*.gemi*.tmp" "*.gemi*.out" 2>nul
    echo Archivos temporales eliminados.
    goto :eof

:distclean
    :: Primero, llama a la función 'clean' para eliminar los archivos temporales.
    call :clean
    echo.
    echo Eliminando el archivo PDF generado...
    del /Q "*.pdf" 2>nul
    echo Archivo PDF eliminado.
    goto :eof

:help
    echo.
    echo Uso: %~nx0 [comando]
    echo.
    echo Comandos disponibles:
    echo   (sin comando) o build - Compila el documento LaTeX a PDF.
    echo   clean                 - Elimina los archivos temporales de compilación de LaTeX.
    echo   distclean             - Elimina los archivos temporales y el PDF generado.
    echo   help                  - Muestra este mensaje de ayuda.
    echo.
    goto :eof

:: --- Lógica Principal: Procesamiento de Comandos ---
:: Comprueba el primer argumento pasado al script.
if "%1"=="" (
    :: Si no se proporciona ningún argumento, ejecuta el comando 'build' por defecto.
    call :build
) else if /I "%1"=="build" (
    :: Si el argumento es 'build' (sin importar mayúsculas/minúsculas), ejecuta 'build'.
    call :build
) else if /I "%1"=="clean" (
    :: Si el argumento es 'clean', ejecuta 'clean'.
    call :clean
) else if /I "%1"=="distclean" (
    :: Si el argumento es 'distclean', ejecuta 'distclean'.
    call :distclean
) else if /I "%1"=="help" (
    :: Si el argumento es 'help', ejecuta 'help'.
    call :help
) else (
    :: Si el argumento es desconocido, muestra un error y la ayuda.
    echo Error: Comando desconocido "%1".
    call :help
)

endlocal
exit /b