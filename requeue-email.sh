#!/bin/bash

echo "re-queue for email preprocessor running..."

go run main.go --region us-west-1 --endpoint "http://tl-elasticmq.dev.thetaocean.com:9324" --source email-preprocessor-queue-deadletter --destination email-preprocessor-queue

