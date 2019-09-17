# How to use
```
pip3 install -r requirements.txt
pytest
```

## The following python code will be tested by `pytest`

*Import libraries*

    >>> from functools import reduce 

*Run the following examples*

    >>> mylist = [1, 2, 3, 4]
    >>> print(f"The sum of the list elements is {reduce(lambda a,b : a+b, mylist)}")
    The sum of the list elements is 10

