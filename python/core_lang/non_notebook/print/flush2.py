import time


# shown on docker-compose
print("aaa", flush=True)

# shown on docker-compose after 10 sec...
print("bbb")


time.sleep(10)

