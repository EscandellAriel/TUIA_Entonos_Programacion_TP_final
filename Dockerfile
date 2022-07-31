FROM ubuntu:latest

RUN mkdir entornos
COPY *.sh entornos/
COPY texto.txt entornos/
WORKDIR /entornos
RUN chmod +x *.sh

CMD [ "./menuPrincipal.sh", "texto.txt" ]