#! /bin/bash

GITHUB_REPO="https://github.com/berlingoqc/cod-zombie-2d-clone"
POST_FOLDER="cod-zombie-2d-clone"
PROJECT_LOG_FOLDER="logs"

rm -rf $POST_FOLDER
git clone --progress --verbose $GITHUB_REPO

for log in $(ls $POST_FOLDER/$PROJECT_LOG_FOLDER/*.md); do
    filename=$(basename $log)
    cat $log > content/$POST_FOLDER/journal/$filename
done