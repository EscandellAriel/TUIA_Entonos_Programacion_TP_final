#!/usr/bin/env bash
PS3='Opcion> '
echo "Qué script desea ejecutar?"
select OPCION in "statsWords.sh" "statsUsageWords.sh" "findNames.sh" "statsSentences.sh" "blankLinesCounter.sh" "Exit"
do
[ -e $REPLY ] && echo "Elegir opcion valida!" && continue
[ $REPLY == 6 ] && echo "Cerrando Menú" && break
echo "Script elegido: " $OPCION && . $OPCION $1
done
exit 0
