import pytest
import doctest

def test_readme():
    assert doctest.testfile("../README.md").failed == 0


