#!/bin/bash
# AyElAldo

# Descripcion de uso
usage() {
    echo "Uso: $0 <inicio> <fin> <paso> [nombre_archivo_salida]"
    echo ""
    echo "Genera un diccionario de números en Base64."
    echo ""
    echo "Argumentos:"
    echo "  <inicio>  : Número de inicio del rango (ej: 1)"
    echo "  <fin>     : Número final del rango (ej: 100)"
    echo "  <paso>    : Incremento entre números (ej: 1, 2, 5, etc.)"
    echo "  [archivo] : Nombre del archivo para guardar el diccionario (Opcional, por defecto: diccionario_b64.txt)"
    exit 1
}

# Validar parámetros de entrada
if [ "$#" -lt 3 ]; then
    usage
fi

START=$1
END=$2
STEP=$3

seq $START $STEP $END | while read -r number; do
    echo -n "$number" | base64 
done
