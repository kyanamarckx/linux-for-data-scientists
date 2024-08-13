#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

cd scripts

./getdata.sh

./transformdataBourgoyen.sh
./transformdataGentbruggeArsenaal.sh
./transformdataOostakker.sh
./transformdataTheLoop.sh
./transformdataWondelgem.sh

./analysedataBourgoyen.py
./analysedataGentbruggeArsenaal.py
./analysedataOostakker.py
./analysedataTheLoop.py
./analysedataWondelgem.py

./generatereportMD.sh
./generatereportPDF.sh

./github.sh
