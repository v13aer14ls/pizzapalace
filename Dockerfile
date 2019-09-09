FROM ubuntu:latest
MAINTAINER Guilherme Amaral "guilhermesa2025@gmail.com"
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

CMD python3 flask-bootstrap/server.py
