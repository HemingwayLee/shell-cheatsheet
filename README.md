# shell-cheatsheet

* `sh` is a specification, not an implementation
* `bash` is an implementation of `sh` (other implementations: ksh, zsh, dash, ...)
* `/bin/sh` used to point to `/bin/bash` on most GNU/Linux systems

# The first line of the file
* we need `#!/bin/bash` at the first line of the `.sh` file if we want to run `.sh` file in     some docker environment
   * When we use `#!/bin/bash` then we tell the environment os to use bash as a command interpreter.
   * If we install many versions of Python, then `#!/usr/bin/env` ensures that the interpreter will use the first installed version on your environment's `$PATH`

# Cheatsheet

## ssh (`<user>` is `your_user_name` in GoogleCloud and it is `ubuntu` in AWS)

```
ssh -i ~/.ssh/<my.pem> <user>@<ip>
```

```
ssh -F /dev/null <user>@<ip>
```

## cp rm everything (folder and files)
```
sudo rm -fr *
sudo cp -R /home/abc/* .
```

## scp

Use `-r` option to copy the folder

```
scp -i ~/.ssh/xxx.pem ~/Desktop/util.js username@xx.xxx.xxx.xxx:/home/foldername
```

## ls 

### makes it human readable (e.g., GB, MB, ...)
```
ls -lh
```

### order by time
```
ls -lt
```

## tmux
```
tmux ls
tmux kill-session -t runserver
tmux new-session -d -s runserver "python3 manage.py runserver 0.0.0.0:8000"
```

## git  
* check commits and check what this commit was changing  
```
git log --pretty=oneline
git diff COMMIT_HASH_CODE^!
```

* Create a feature branch  
```
git checkout -b FEATURE_BRANCH_NAME
git add .
git commit -m "My branch is ready"
git push origin FEATURE_BRANCH_NAME
```

* Remove files from remote after adding .gitignore  
```
git rm --cached `git ls-files -i --exclude-from=.gitignore` 
git commit -m 'Removed all files that are in the .gitignore' 
git push origin master
```

* Discard all local changes  
```
git reset --hard
```

* changes -> add -> commit
* undo changes
```
git checkout -- file.py
```

* undo add
```
git reset file.py
```

* undo commit
```
git revert --no-commit XXXXXX HEAD
git commit
git push
```

* Diff local and remote  
```
git diff master origin/master
```

* mirror  
```
cd old-repo
git push --mirror https://github.com/new-repo.git
```

* get only `20` commits
```
git clone --depth 20 https://github.com/tesseract-ocr/tesseract.git
```

https://stackoverflow.com/questions/7927230/remove-directory-from-remote-repository-after-adding-them-to-gitignore

## standard output
```
history > h.txt  # override
ls >> abc.txt    # append
```

## Kill the process listening on port 3000 
```
kill -9 $(lsof -i:3000 -t)
```

## find folder
```
find . -type d -name 'foldername'
```

`.` means current directory

## check file information

```
$ file -I README.md 
README.md: text/plain; charset=us-ascii
```

## mkdir
* Create folders if they do not exist
```
mkdir -p /usr/share/jenkins/ref/
```

## export

* Change environment variable

```
$ export abc=10
$ echo $abc
10
```

* Add variables `/home/mytest` to `PATH`

```
export PATH=$PATH:/home/mytest
```

* List all environment variables
```
export -p
```

* Check if environment variable exist
```
if [[ -z "${DEPLOY_ENV}" ]]; then
  MY_SCRIPT_VARIABLE="Some default value because DEPLOY_ENV is undefined"
else
  MY_SCRIPT_VARIABLE="${DEPLOY_ENV}"
fi
```

## open

open from command line

```
open hello.html
open -a "Google Chrome" hello.html
open -a "Sublime Text 2" README.md
```

or add it to `~/.bashrc`

```
alias chrome='open -a "Google Chrome"'
alias sublime='open -a "Sublime Text 2"'
```

## Chain bash commands

Sometimes we need to chain the bash command when we run `docker build`, because each command in the Dockerfile (e.g. FROM, ENV, RUN) is a step in the build process. Docker processes each step in an intermediate container. 

```
A; B    # Run A and then B, regardless of success of A
A && B  # Run B if and only if A succeeded
A || B  # Run B if and only if A failed
A &     # Run A in background
```

# curl
## Read JSON in bash
```
curl -s 'https://api.github.com/users/lambda' | python3 -c "import sys, json; print(json.load(sys.stdin)['name'])"
```

## loop until web server available
```
until $(curl --output /dev/null --silent --head --fail http://myhost:myport); do
    printf '.'
    sleep 5
done
```

`--fail`: wait until return 200

## Read random line  
```
cat file.txt | shuf -n 1
```

## shuffle 
```
shuf words.txt
gshuf addresses.csv > addresses2.csv
```

## Run process in the background  
https://unix.stackexchange.com/questions/74520/can-i-redirect-output-to-a-log-file-and-background-a-process-at-the-same-time  


# colon operator in variable
```
${parameter:-word}
```

If `parameter` is unset or null, the expansion of `word` is substituted. Otherwise, the value of `parameter` is substituted.


# Reference

https://stackoverflow.com/questions/5725296/difference-between-sh-and-bash
