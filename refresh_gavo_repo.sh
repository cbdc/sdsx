#!/bin/bash
set -e
set -xv

echo '--------------------------------------------'
date

HERE=$(cd `dirname "$BASH_SOURCE"`; pwd)

(
cd "$HERE"

git fetch origin

LOG=$(git log HEAD..origin/master --oneline)

# If $LOG is empty, there is nothing to pull
[ -z "$LOG" ] && exit 0

git pull

gavo imp pub.rd
gavo pub pub.rd
[ $? ] && sudo gavo serve reload

)

echo '--------------------------------------------'

