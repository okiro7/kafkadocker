docker build --rm -f Dockerfile  -t kafka:release .

docker run -it --name kafkabroker -p 9092:9092 -p 2181:2181 kafka:release

docker exec -it kafkabroker /bin/bash

bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic productos-topic
bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic rpprouter-account-topic


bin/kafka-topics.sh --list --bootstrap-server localhost:9092


# para eliminar un topic
Add one line to server.properties file under config folder:

delete.topic.enable=true

then, run this command:

bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic test
./kafka-topics.sh --zookeeper localhost:2181 --alter --topic rpp-dvv-topup-dvv --partitions 20


--ERRORES COMUNES

* org.apache.kafka.clients.NetworkClient   : [Producer clientId=producer-1] Error connecting to node a0681a6571ad:9092 (id: 0 rack: null) java.net.UnknownHostException: a0681a6571ad
    Deben de registrar ekl host a0681a6571ad en los host de la maquina pára que lo resuelva, este host es por tarjeta de red 



https://medium.com/@yzhong.cs/kafka-installation-step-by-step-guide-2a4c0449515e
http://apache.mirror.vexxhost.com/kafka/2.4.1/
