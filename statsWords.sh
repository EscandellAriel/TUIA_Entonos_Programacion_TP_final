#!bin/bash
#Indicador estidístico de la longitud de palabas:
#más corta
#más larga
#promedio longitud
longestlength=0
shortestlength=5000  # initialize shortestlength to something big
suma=0
contador=0
IFS=' '
while  read -rd " " line
do
   linelength=${#line}
   suma=$(($suma+$linelength))
   contador=$(($contador+1))
   if [ $linelength -gt $longestlength ];
   then
     longest=$line
     longestlength=$linelength
   fi
   if [ $linelength -lt $shortestlength ];
   then
        shortest=$line
        shortestlength=$linelength
   fi
done < $1
promedio=$(($suma/$contador))
echo "La palabra mas larga tiene $longestlength caracteres y es: $longest"
echo "La palabra mas corta tiene $shortestlength caracteres y es $shortest"
echo "el promedio de caracteres por palabra es $promedio"