FROM ubuntu:latest
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV FLASK_APP=simple-flask-app/blog

MAINTAINER Guilherme Amaral "guilhermesa2025@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

#CMD ["flask run"]

RUN pip3 install -r requirements.txt

COPY . /app

EXPOSE 5000

CMD flask run -h 0.0.0.0
