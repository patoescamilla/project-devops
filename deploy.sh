#!/bin/bash

source config/config.env

ACTION=$1
INSTANCE=${2:-$INSTANCE_ID}
DIR=${3:-$DIRECTORY}
BUCKET=${4:-$BUCKET_NAME}

echo "Deploy iniciado" >> logs/deploy.log

python3 ec2/gestionar_ec2.py $ACTION $INSTANCE

bash s3/backup_s3.sh $DIR $BUCKET

echo "Deploy finalizado" >> logs/deploy.log
