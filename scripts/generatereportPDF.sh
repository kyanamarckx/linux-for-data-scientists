#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

cd ../pdf

./md-pdf.sh

cd ../scripts

pandoc ../pdf/md-for-pdf.md -o ../report.pdf --pdf-engine=xelatex 