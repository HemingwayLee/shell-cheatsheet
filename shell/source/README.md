# How does `source` command works?

## How to run this project
* Run with docker
```
docker build -t mysource .
docker run -it --rm mysource
```

* Run inside docker
```
root@6dba024106bb:/home/app# ./var.sh 
root@6dba024106bb:/home/app# echo $AAA

root@6dba024106bb:/home/app# source var.sh 
root@6dba024106bb:/home/app# echo $AAA
aaa
root@6dba024106bb:/home/app#
```

* Note
  * `./script` runs the script as an executable file, launching `a new shell` to run it
  * `source script` reads and executes commands from filename `in the current shell` environment


