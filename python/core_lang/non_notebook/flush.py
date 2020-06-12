import time
                                                                   
print("Loading", end = "")
for i in range(6):
    print(".", end = '')
    time.sleep(0.2)

print("Loading", end = "")
for i in range(6):
    print(".", end = '', flush = True)
    time.sleep(0.2)

