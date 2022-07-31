#!bin/bash
#Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro)
#letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene
#más apariciones a la que tiene menos). Es decir, filtrar las palabras que
#tengan al menos 4 letras y de éstas, elegir las 10 más usadas.
# tr '[:upper:][:lower:]' '[:lower:][:upper:]'
tr -c "'[A-Za-z]" "\n" < $1 |tr '[:upper:]' '[:lower:]'| egrep '[a-z]{4,}' | sort | uniq -c | sort -nr >temp.txt |echo "    Cant Palabra" && head -10 <temp.txt
rm temp.txt
