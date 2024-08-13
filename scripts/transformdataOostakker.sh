#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

DIR="../data/*.json"
OUT="../transform/dataOostakker.csv"

echo \"Timestamp\",\"Total\",\"Available\",\"Longitude\",\"Latitude\" > ${OUT}

for file in ${DIR}; do
	jq -r '.[] | .fields | select(.name == "P+R Oostakker") | [ .lastupdate, .numberofspaces, .availablespaces, .longitude, .latitude ] | @csv' "${file}" >> ${OUT}
done;
