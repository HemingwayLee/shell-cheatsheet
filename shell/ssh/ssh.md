# Connect:

```
ssh -i ~/.ssh/ywlee.pem ubuntu@ec2-54-86-220-93.compute-1.amazonaws.com
```
```
ssh -i {private_key} admin@{IP} -p 12345
```

# Run script on server

```
ssh -i ~/.ssh/id_rsa ylee@{IP} -p 12345 "ls"
```

# Get file from server

```
ssh -i ~/.ssh/id_rsa ylee@{IP} -p 12345 "cat /home/ylee/xxx.csv" > xxx.csv
```

# File to EC2:

```
scp -i ~/.ssh/ywlee.pem ~/Desktop/issue1.txt ubuntu@ec2-52-55-103-2.compute-1.amazonaws.com:/tmp
```

