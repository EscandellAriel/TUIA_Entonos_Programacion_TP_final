#!/usr/bin/env bash
PS3='Opcion> '
echo "Qué script desea ejecutar?"
select OPCION in "statsWords.sh" "statsUsageWords.sh" "findNames.sh" "statsSentences.sh" "blankLinesCounter.sh" "Exit"
do
[ -e $REPLY ] && echo "Elegir opcion valida!" && continue
[ $REPLY == 6 ] && echo "Cerrando Menú" && break
echo "Script elegido: " $OPCION && . $OPCION $1
echo "1) statsWords.sh         3) findNames.sh          5) blankLinesCounter.sh
2) statsUsageWords.sh    4) statsSentences.sh     6) Exit"
done
exit 0
