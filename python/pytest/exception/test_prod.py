import pytest
from .prod import foo

def test_answer():
    with pytest.raises(IOError) as excinfo:
        foo()
    
    assert "this is IO error" == str(excinfo.value)


