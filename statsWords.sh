#!bin/bash
#Indicador estidístico de la longitud de palabas:
#más corta
#más larga
#promedio longitud

 tr -c "[A-Za-z]" "\n"  <$1|egrep -wo '[A-Za-z]+' |sort|awk 'length > max_length { max_length = length; longest = $0 } END { print "Palabra mas larga:"longest " Caracteres: "max_length }'
 tr -c "[A-Za-z]" "\n"  <$1|egrep -wo '[A-Za-z]+' |sort|awk 'NR==1 || length < min_length { min_length = length; shortest = $0 } END { print "Palabra mas corta:"shortest" Caracteres: " min_length }'
 tr -c "[A-Za-z]" "\n"  <$1|egrep -wo '[A-Za-z]+' |sort|gawk '{ suma += length; contador += 1}  END { print "Longitud promedio palabra: "suma/contador}'
 