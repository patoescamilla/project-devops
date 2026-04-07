#!/bin/bash

ACTION=$1
INSTANCE=$2
DIR=$3
BUCKET=$4

echo "Deploy iniciado" >> logs/deploy.log

python3 ec2/gestionar_ec2.py $ACTION $INSTANCE

bash s3/backup_s3.sh $DIR $BUCKET

echo "Deploy finalizado" >> logs/deploy.log
