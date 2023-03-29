#!/bin/bash
# Upload a local file to the GCS storage bucket using gsutil.

set -eou pipefail

# TODO: 
readonly LOCATION="/home/gibson_cameron1993/env/va_survey/data/va_survey_data_clean.csv" # Specify location of file
readonly DESTINATION_BUCKET_NAME="va_acting_data" # Specify the location of your bucket. For example, US-EAST1.


main() {
   gsutil cp -r ${LOCATION} \
   gs://${DESTINATION_BUCKET_NAME}/
}

main