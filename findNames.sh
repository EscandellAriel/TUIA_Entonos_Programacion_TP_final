#!bin/bash
#Identificación de nombres propios (formato: Nnnnnn)
#
echo "Lista Nombres Propios:"\ && grep -o '[A-Z][a-z]*' $1
