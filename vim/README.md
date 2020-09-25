# vim
* A better verion of `vi`
* In server-side, we need it to modify the files on the server


* Modify the read-only file by vim
```
sudo vim readonly.txt
```

```
:w !sudo tee %
O
:q!
```

* set number by default

```
vi ~/.vimrc
```

then add the following line to the file:

```
set number
```

* Delete one line
```
dd
```

* Delete all
```
d
G
```

* Search
```
/word
```

