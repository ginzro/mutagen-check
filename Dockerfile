FROM ubuntu:18.04

WORKDIR /app

COPY files /app/files
RUN cp -r ./files ./volumed
RUN find volumed -type f | xargs gzip --keep --best 
