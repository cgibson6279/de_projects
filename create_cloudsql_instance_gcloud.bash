#!/bin/bash
# Create CloudSql Instance with gcloud.
# COST $0.035/hour. DO NOT FORGET TO DELETE.

set -eou pipefail

main() {
    gcloud sql instances create mysql-instance-source \
    --database-version=MYSQL_5_7 \
    --tier=db-gl-small \
    --region=us-central1 \
    --root-password=packt123 \
    --availability-type=zone1 \
    --storage-size=10GB \
    --storage-type=HDD
}

main