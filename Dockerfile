FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y default-jre

RUN apt install -y wget

RUN apt install -y nano

RUN apt-get -y install curl

RUN wget http://apache.mirror.vexxhost.com/kafka/2.4.1/kafka_2.12-2.4.1.tgz

RUN tar -xzf kafka_2.12-2.4.1.tgz

#RUN cd kafka_2.12-2.4.1

#ADD docker-entrypoint.sh /files/entrypoint.sh

#ENTRYPOINT /files/entrypoint.sh