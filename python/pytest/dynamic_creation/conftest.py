import pytest
import os

def pytest_addoption(parser):
    parser.addoption("--model", action="store", default="")
    parser.addoption("--path", action="store", default="")

def pytest_generate_tests(metafunc):
    path = metafunc.config.getoption("path")
    metafunc.parametrize("filename", [f for f in os.listdir(path) if f.endswith(".txt")])

