#!bin/bash

awk  'BEGIN{RS="\\. "}1' $1| grep -Ev "^$"  |  awk 'length > max_length { max_length = length; longest = $0 } END { print "Oración mas larga:"longest "\nCaracteres: "max_length }'
awk  'BEGIN{RS="\\. "}1' $1| grep -Ev "^$"  |  awk 'NR==1 || length < min_length { min_length = length; shortest = $0 } END { print "Oración mas corta:"shortest"\nCaracteres: " min_length }'
awk  'BEGIN{RS="\\. "}1' $1| grep -Ev "^$"  |  awk '{ suma += length; contador += 1}  END { print "Longitud promedio de oraciñon: "suma/contador}'