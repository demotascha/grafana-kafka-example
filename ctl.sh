#!/bin/bash

case "$1" in
  build)
    docker build -t kafka_producer -f kafka_producer.Dockerfile .
  ;;
  run)
    # For testing kafka_producer
    docker run -i -t kafka_producer
  ;;
  up)
    docker-compose -f docker-compose.yaml up --detach
  ;;
  down)
    docker-compose -f docker-compose.yaml down
  ;;
  start)
    echo "start"
    ;;
  *)
    echo "Command not recognized [$@]"
    echo "Help:"
    echo "  build"
    echo "  up | down"
    echo "  run (For testing kafka_producer)"
    ;;
esac
