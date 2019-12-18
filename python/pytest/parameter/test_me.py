import pytest

@pytest.fixture()
def get_my_configs(pytestconfig):
    return (pytestconfig.getoption("model"), pytestconfig.getoption("path"))

def test_print_name(get_my_configs):
    print(f"model: {get_my_configs[0]}, path: {get_my_configs[1]}")
    pass

class Test_File():
    @pytest.mark.parametrize(
        'file', ["/root/aaa", "/home/ubuntu", "/root/ggyy/a"]
    )
    
    def test_file(self, file):
        print(file)
        pass


