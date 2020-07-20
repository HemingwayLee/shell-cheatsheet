# Shell
![flow](http://linux.vbird.org/linux_basic/0320bash//centos7_bashrc_1.gif)

* We can put environment variables in both `.bash_profile` and `.bashrc`
* `login shell` will use `.bash_profile`
* `non login shell` will use `.bashrc`
* If there are some settings that you want to use after login, put those settings in `.bash_profile`

* In `.bash_profile`, use the settings from `.bashrc`

```
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
```

## source
After changing the settings in `.bashrc` or `.bash_profile`, we need to logout/login in order to make it work, we can also run the following command

```
source ~/.bashrc
```

to make it work without logout/login





