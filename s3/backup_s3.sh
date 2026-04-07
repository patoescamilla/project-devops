#!/bin/bash

DIR=$1
BUCKET=$2

FILE="backup_$(date +%s).tar.gz"

tar -czf $FILE $DIR
aws s3 cp $FILE s3://$BUCKET/

echo "Backup realizado" >> logs/backup.log
