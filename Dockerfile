FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -yqq --no-install-recommends gcc gcc-multilib vim sysbench \
    && rm -rf /var/lib/apt/lists/*

COPY exception.c loop.sh /app/

WORKDIR /app

RUN gcc -w -o exception.out exception.c
