#!/bin/bash

# # Archivo .sh para compilar documentos con GeminiTeX (para TeXmaker en Linux)

# --- Configuración ---
LATEX="pdflatex"
LATEX_OPTS="-shell-escape"

# --- Procesamiento del argumento de entrada (ruta completa del archivo .tex) ---
if [ -z "\$1" ]; then
    echo "Error: Debes proporcionar la ruta completa de un archivo .tex como argumento."
    echo "Ejemplo: $(basename "\$0") /ruta/a/mi_documento.tex"
    exit 1
fi

TEX_FILE_PATH="\$1"
# Extrae el nombre base del archivo sin extensión
MAIN_TEX_NAME=$(basename -- "$TEX_FILE_PATH" .tex)
# Extrae el directorio del archivo
TEX_DIR=$(dirname -- "$TEX_FILE_PATH")
OUTPUT_PDF_FILE="${MAIN_TEX_NAME}.pdf"

# Cambiar al directorio del archivo .tex para que los archivos auxiliares se generen allí
# Guardar el directorio actual para poder volver
CURRENT_DIR=$(pwd)
cd "$TEX_DIR" || { echo "Error: No se pudo cambiar al directorio $TEX_DIR"; exit 1; }

# --- Funciones ---

build() {
    echo ""
    echo "Compilando ${MAIN_TEX_NAME}.tex a ${OUTPUT_PDF_FILE}..."
    echo "Ejecutando ${LATEX} ${LATEX_OPTS} ${MAIN_TEX_NAME}.tex"
    ${LATEX} ${LATEX_OPTS} "${MAIN_TEX_NAME}.tex"
    if [ $? -ne 0 ]; then
        echo "Error: La compilación de LaTeX falló."
        return 1 # Indicar fallo
    fi
    echo ""
    echo "Compilación completada. Verifique ${OUTPUT_PDF_FILE}."
    return 0
}

clean() {
    echo ""
    echo "Limpiando archivos temporales generados por LaTeX y GeminiTeX para ${MAIN_TEX_NAME}..."
    # Usar -f para forzar y evitar errores si el archivo no existe
    rm -f "${MAIN_TEX_NAME}.aux" "${MAIN_TEX_NAME}.log" "${MAIN_TEX_NAME}.out" "${MAIN_TEX_NAME}.toc" "${MAIN_TEX_NAME}.gemi"*.tmp "${MAIN_TEX_NAME}.gemi"*.out
    echo "Archivos temporales eliminados."
    return 0
}

distclean() {
    clean
    echo ""
    echo "Eliminando el archivo PDF generado: ${OUTPUT_PDF_FILE}..."
    rm -f "${OUTPUT_PDF_FILE}"
    echo "Archivo PDF eliminado."
    return 0
}

help_message() {
    echo ""
    echo "Uso: $(basename "\$0") <ruta_archivo.tex> [comando]"
    echo ""
    echo "  <ruta_archivo.tex> : Ruta completa al archivo LaTeX principal (ej. \"/home/user/documentos/mi_tesis.tex\")."
    echo "                        En TeXmaker, usar \"%%.tex\"."
    echo ""
    echo "Comandos disponibles:"
    echo "  (sin comando) o build - Compila el documento LaTeX a PDF."
    echo "  clean                 - Elimina los archivos temporales de compilación de LaTeX para este documento."
    echo "  distclean             - Elimina los archivos temporales y el PDF generado para este documento."
    echo "  help                  - Muestra este mensaje de ayuda."
    echo ""
    return 0
}

# --- Lógica Principal: Procesamiento de Comandos ---
# El primer argumento es siempre la ruta del archivo .tex
# El segundo argumento (opcional) es el comando (build, clean, distclean)
COMMAND="${2:-build}" # Por defecto es 'build' si no se especifica el segundo argumento

case "$COMMAND" in
    build)
        build
        ;;
    clean)
        clean
        ;;
    distclean)
        distclean
        ;;
    help)
        help_message
        ;;
    *)
        echo "Error: Comando desconocido \"$COMMAND\"."
        help_message
        exit 1
        ;;
esac

# Volver al directorio original
cd "$CURRENT_DIR" || { echo "Error: No se pudo volver al directorio original $CURRENT_DIR"; exit 1; }
exit 0