# grafana-kafka-on-your-local
Example integration of a Kafka Producer, Kafka Broker and Promtail producing test data on local, see [architecture](https://github.com/grafana/grafana-kafka-example/blob/main/architecture1.png)

Requires Docker and Docker Compose

## Build the Docker container for the Kafka Producer
```
./ctl.sh build
```
## Start the containers using Docker Compose
```
./ctl.sh up
```
This will start the containers: zookeeper, kafka, producer, grafana, prometheus, tempo, loki and promtail

## Stop the containers
```
./ctl.sh down
```
