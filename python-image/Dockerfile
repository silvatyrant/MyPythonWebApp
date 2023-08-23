FROM debian:stable
RUN apt update && apt upgrade
RUN apt install -y wget build-essential libncursesw5-dev libssl-dev \
     libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
RUN wget https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tgz
RUN tar xvf Python-3.11.3.tgz
WORKDIR /Python-3.11.3
RUN ./configure --enable-optimizations 
RUN make altinstall
RUN ln -s /usr/local/bin/python3.11 /usr/local/bin/python
RUN ln -s /usr/local/bin/pip3.11 /usr/local/bin/pip
RUN rm -rf /Python-3.11.3*
RUN mkdir -p /usr/src/app
RUN groupadd appgrp
RUN useradd appusr -g appgrp -d /usr/src/app  -s /bin/bash
RUN chown appusr:appgrp -R /usr/src
USER appusr
WORKDIR /usr/src/app