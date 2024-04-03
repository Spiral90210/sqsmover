#!/bin/bash

if [ "$#" -ne 1 ]
then
  echo "Usage: ./requeue.sh queuename"
	echo "  Assumes the deadletter is the same, but with a -deadletter suffix"
  exit 1
fi

QUEUE_NAME=$1

go run main.go \
	--region us-west-1 \
	--endpoint 'http://tl-elasticmq.dev.thetaocean.com:9324' \
	--source "${QUEUE_NAME}-deadletter" \
	--destination "${QUEUE_NAME}"
