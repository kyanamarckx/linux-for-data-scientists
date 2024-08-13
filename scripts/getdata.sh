#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

DATUM=$(date +%Y%m%d-%H%M%S)
URL="../data/pr-data-"

curl -o "${URL}""${DATUM}".json https://data.stad.gent/explore/dataset/real-time-bezetting-pr-gent/download?format=json &>>../output.log
sudo chmod a=r "${URL}""${DATUM}".json
