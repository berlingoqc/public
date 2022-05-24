#! /bin/bash

GITHUB_REPO="https://github.com/berlingoqc/cod-zombie-2d-clone"
POST_FOLDER="cod-zombie-2d-clone"
PROJECT_LOG_FOLDER="logs"

function create_post_file() {
    path=$1
    destination=$2

    cat $path > $destination
}

rm -rf $POST_FOLDER
git clone $GITHUB_REPO


ls -la

for log in $(ls $POST_FOLDER/$PROJECT_LOG_FOLDER/*.md); do
    filename=$(basename $log)
    create_post_file $log content/$POST_FOLDER/journal/$filename
done