# Show normal print output

```
pytest -s
```

## How to know `pytest` is running
```
import sys

if "pytest" in sys.modules:
  print("test")
else:
  print("normal")
```

