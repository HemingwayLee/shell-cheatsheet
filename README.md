# shell-cheatsheet

* `sh` is a specification, not an implementation
* `bash` is an implementation of `sh` (other implementations: ksh, zsh, dash, ...)
* `/bin/sh` used to point to `/bin/bash` on most GNU/Linux systems

## Which shell I am using
```
echo $SHELL
echo $0
```

## zsh vs bash
* Mac Catalina will default to `zsh` instead of `bash`
  * The version of bash shipped with macOS is VERY OLD, because it is GPLv2 license and Apple is allowed to distribute it  
  * The current v5 bash is under the GPLv3 license that is poison to Apple, so they cannot give you an up-to-date bash with bug fixes
  * zsh has a better community supports
  * bash is still there, nothing will change for you. All that changes is that zsh will be the default login shell for new accounts, and we can select bash instead
  * Scripts are not affected. What changes is the shell for interactive use, i.e. the shell in terminals. If you have a script in a file starting with `#!/bin/bash` or `#!/bin/sh` or `#!/usr/bin/env bash`, it'll keep working exactly as before.

### Reference
https://apple.stackexchange.com/questions/361870/what-are-the-practical-differences-between-bash-and-zsh

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

### Count how many files in folder
```
ls | wc -l
```

## tmux
```
tmux ls
tmux kill-session -t runserver
tmux new-session -d -s runserver "python3 manage.py runserver 0.0.0.0:8000"
```

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

### find and delete with `wildcard`
* delete files in current folder which contain `aaa` in filename
```
find . -type f -name '*aaa*' -delete
```

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

# Disk
* See disk details
```
lshw -class disk
```
* Free space
```
df -h
```

* In which filesystem:
```
df -h /home/lee/projects
```

# Note
[service account and user account](https://unix.stackexchange.com/questions/314725/what-is-the-difference-between-user-and-service-account)

# Reference
https://stackoverflow.com/questions/5725296/difference-between-sh-and-bash
