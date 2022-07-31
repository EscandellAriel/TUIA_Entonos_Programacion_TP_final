# TUIA_Entornos_Programacion_TP_final
Trabajo Practico Final de la Materia Entornos de Programacion de la Carrera Tecnicatura Universitaria en Inteligencia Artificial de la Universidad Nacional de Rosario

Integrante: Ariel Escandell

Consignas:
1. statsWords.sh
Indicador estadístico de longitud de palabras (la más corta, la más larga y el
promedio de longitud).
2. statsUsageWords.sh
Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro)
letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene
más apariciones a la que tiene menos). Es decir, filtrar las palabras que
tengan al menos 4 letras y de éstas, elegir las 10 más usadas.
3. findNames.sh
Identificación de nombres propios (se identifican sólo si están en este formato
Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
Ejemplos: Mateo, Estonoesunnombre, Ana.
4. statsSentences.sh
Indicador estadístico de longitud de oraciones (la más corta, la más larga y el
promedio de longitud).
5. blankLinesCounter.sh
Contador de líneas en blanco.

El trabajo debe ser distrubuible mediante un docker para cual procemos a crear
una imagen, mediante un archivo de configuracion Dockerfile.

Para correr el trabajo se deben seguir las siguientes instrucciones:
1. Descargar los archivos de éste repositorio git.
2. Extraerlos en una carpeta.
3. Verificar que tenga instalado Docker en su sistema.
    docker -version
4. Ejecute el comando para armar el docker y etiquetarlo 
    docker build . -t entornos_tp:1.0
5. Chequear que la imagen se halla creado correctamente
    docker images
6. Ejecute el comando para correr el docker
    docker run entornos_tp:1.0

Esto abre el docker y ejecuta automáticamente el menú desde el cual prodrá acceder a los scripts

![menu](https://user-images.githubusercontent.com/80921070/182046271-8cb844af-300f-44e1-b6b3-346523538572.JPG)
