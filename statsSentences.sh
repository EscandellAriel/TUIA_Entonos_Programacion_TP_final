#!bin/bash
#Indicador estadístico de longitud de oraciones (la más corta, la más larga y el
#promedio de longitud).
#awk '{ print length(), $0 | "sort -n" }' $1
#!/bin/bash
#while read -r line; do
#    (( ${#line} > max )) && max=${#line} && longest="$line"
#done
#echo "$longest"
#awk 'length > max_length { max_length = length; longest_line = $0 } END { print longest_line }' $1
longestlength=0
shortestlength=5000  # initialize shortestlength to something big
suma=0
contador=0

while  read -rd "." line
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
echo "La oración mas larga tiene $longestlength caracteres y es: $longest"
echo "La oración mas corta tiene $shortestlength caracteres y es $shortest"
echo "el promedio de caracteres por oración es: $promedio"