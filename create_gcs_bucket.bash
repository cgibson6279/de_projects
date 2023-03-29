#!/bin/bash
# Creates GCS storage bucket.

set -eou pipefail
# TODO: 
readonly LOCATION="US-EAST1" # Specify the location of your bucket. For example, US-EAST1.
readonly PROJECT_ID="usc-vc-voice-acting-survey" # Specify the project ID or project number with which your bucket will be associated. For example, "my-project"
readonly BUCKET_NAME="va_acting_data" # The name you want to give your bucket, subject to naming requirements. For example, my-bucket.
readonly STORAGE_CLASS="NEARLINE" # Specify the default storage class of your bucket. For example, NEARLINE.

main() {
    echo "Creating ${BUCKET_NAME} GCS BUcket at location ${LOCATION} in project ${PROJECT_ID}."
    gcloud storage buckets create gs://${BUCKET_NAME} \
    --project=${PROJECT_ID} \
    --default-storage-class=${STORAGE_CLASS} \
    --location=${LOCATION} \
    --uniform-bucket-level-access

    echo "Bucket creation complete."
}

main