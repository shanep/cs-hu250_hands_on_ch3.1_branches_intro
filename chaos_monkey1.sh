#!/bin/bash

# for this assignment, keep things simple by:
#  - creating local branches for every remote branch
#  - removing the reference to the remote

for remote_branch in `git branch -r | grep -v HEAD | grep -v master`
do
    git branch ${remote_branch#"origin/"} $remote_branch
done

git remote remove origin

echo "$0 completed!"
