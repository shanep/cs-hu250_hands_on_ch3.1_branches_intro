# Ch3.1
# Exercise: Brief Introduction and Visualization of Git Branches

## Step 1
Familiarize yourself with the repository by checking the repository history, file structure, file contents, etc.

## Step 2
To keep things simple in this assignment, run the `./chaos_monkey1.sh` script to:
* create local branches for every remote branch and
* remove all references to remote branches, by removing the remote

## Step 3
The commits were added to the repository in the following chronological order: `C0`, `C1`, ..., `C8`.

The diagram below illustrates the conceptual structure of the repository and emphasizes the chronological order in which the commits were added to the multiple branches.
```
                             (branch)
                                |
                    /--------- C6 -------
                   /
C0 -- C1 ------- C3 ----- C5 ---------- C8  //(current) HEAD->master
        \
         \-- C2 ---- C4 ---------- C7 ---
                      |             |
                   (branch)      (branch)
```

## Step 4
Run the following command to view the branch structure of the repository and notice that the current (i.e., the checked out) branch is `master`:
```bash
$ git log --oneline --decorate --graph --all
```

Compare the output with the diagram from `Step 3`.

## Step 5
To see the commits listed in their chronological order (i.e., based on the date they were added to the repository), use the command:
```bash
$ git log --oneline --decorate --graph --all --author-date-order
```

Compare the output with the diagram from `Step 3`.

## Step 6
Examine the content of the `index.html` file (e.g., use the `cat` command).

## Step 7
Run the `./chaos_monkey2.sh` script.

## Step 8
Re-examine the content of the `index.html` file and notice the differences.

## Step 9
Re-run either command from `Step 4` or `Step 5` to observe the newly created branches and the new current branch.

**NOTE**: Since the repository has a limited number of commits, the `git log ...` command from `Step 4` or `Step 5` is sufficient to manually identify the branches from the output.
However, for real-world repositories you will use more specific git commands to identify and manage branches (e.g., `git branch`).
