# Python
## Python version
* Mac and many linux distributions installed python (2.7) by default. (That's why python is puplor for automation)  
* Don't change python3 to default in linux, some programs are depending on python2.7 (e.g., node-gyp)
* Python 2.x will be EOS at 2020
* Different version of linux server will have different version of python, to install specific version of python on linux, we need to `wget` and `build` it

https://stackoverflow.com/questions/21365714/nodejs-error-installing-with-npm

# Virtual environment
```
python3 -m virtualenv my_venv
source my_venv/bin/activate
pip3 install -r requirements.txt
deactivate
```

# Wheel
* It is a built-package format for python
* It is a zip format archive with a specially formatted filename and the .whl extension
* It is intended to replace eggs

## Why wheel
* Faster installation for pure Python and native C extension packages
* Avoids arbitrary code execution for installation (Avoids setup.py)
* Installation of a C extension does not require a compiler on Linux, Windows or macOS
* More consistent installs across platforms and machines
  * Good for CI

https://pythonwheels.com/

# pip
* `pip` is used to replace `easy_install`
* `pip3 freeze > requirements.txt` will generate all the packages you have, even you don't use them in your project
* `pip install some-package.whl` will install package from .whl file directly

## pip.conf
* pip allows you to set all command line option defaults in a standard ini style config file

If multiple configuration files are found by pip then they are combined in the following order:

* The site-wide file is read
* The per-user file is read
* The virtualenv-specific file is read

Each file read overrides any values read from previous files

# twine
* It is a utility for publishing python packages on PyPl

# setup.py
It is a python file, it allows you to install Python packages

```
pip3 install . 
```

or 

```
python3 setup.py install
```

# Ref
https://blog.zengrong.net/post/2169.html
