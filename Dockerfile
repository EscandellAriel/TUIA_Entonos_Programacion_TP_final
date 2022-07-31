FROM ubuntu:latest

RUN mkdir entornos
COPY *.sh entornos/
COPY texto.txt entornos/
WORKDIR /entornos
RUN chmod +x *.sh

ENTRYPOINT [ "sh", "menuPrincipal.sh texto.txt" ]