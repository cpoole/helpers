#!/bin/bash
REGIONS=(sa-east-1 eu-west-2 eu-west-1 eu-central-1 ap-northeast-1 ap-southeast-2 ap-southeast-1 ap-northeast-2 ap-south-1 ca-central-1 us-west-2 us-west-1 us-east-2 us-east-1)
for region in "${REGIONS[@]}"
do
    echo "====================================================="
    echo "================ REGION: $region ================"
    echo "====================================================="
    $@ --region $region
done
