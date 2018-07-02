#!/bin/bash

function append_and_commit()
{
    local file_name_to_be_appended_and_committed="index.html"
    local file_content=$1
    local commit_message=$1

    echo $file_content >> $file_name_to_be_appended_and_committed

    git add $file_name_to_be_appended_and_committed

    git commit -m "$commit_message"

    sleep 1
}

git checkout pi
git checkout -b sigma
append_and_commit "C9-sigma"

git checkout delta
append_and_commit "C10-delta"

git branch alpha 

git branch epsilon

append_and_commit "C11-delta"

git checkout master
append_and_commit "C12-master"

git branch -D alpha

git checkout epsilon
append_and_commit "C13-epsilon"

echo "$0 completed!"
