# Python
Mac and many linux distributions installed python (2.7) by default. (That's why python is puplor for automation)

Don't change python3 to default in linux, some programs are depending on python2.7 (e.g., node-gyp)

https://stackoverflow.com/questions/21365714/nodejs-error-installing-with-npm

# Virtual environment
```
python3 -m virtualenv my_venv
source my_venv/bin/activate
pip3 install -r requirements.txt
deactivate
```

# Note  
`pip3 freeze > requirements.txt` will generate akk the packages you have, even you don't use them in your project


