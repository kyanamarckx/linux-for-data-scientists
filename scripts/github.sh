#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

cd ..

git add .
git commit -m "add new data"
git push
git status