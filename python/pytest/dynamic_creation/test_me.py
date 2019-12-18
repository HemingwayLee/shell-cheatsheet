import pytest

@pytest.fixture()
def get_my_configs(pytestconfig):
    return (pytestconfig.getoption("model"), pytestconfig.getoption("path"))

def test_print_name(filename, get_my_configs):
    print(f"model: {get_my_configs[0]}, path: {get_my_configs[1]}")
    print(filename)
    pass


