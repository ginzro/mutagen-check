FROM ubuntu:18.04

WORKDIR /app
RUN mkdir -p volumed && cd volumed
CMD cd volumed && for i in $(seq 1 1000); do dd if=/dev/urandom of=random_file_$i bs=10000 count=1; done
