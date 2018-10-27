#Exit immediately if a command exits with a non-zero exit status.
set -e

red='\033[0;31m'
nc='\033[0m'

mongo 127.0.0.1:27017/mydb --eval 'db.mrx.remove({});'

mongo 127.0.0.1:27017/mydb --eval 'db.mrx.insert([{"abc":1},{"def":4}]);'
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.insert({"zzz":2});'
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.insert({"xyz":3});'

echo -e $red"show all elements"$nc
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.find();'

echo -e $red"show count"$nc
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.count();'

echo -e $red"show top 3"$nc
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.find().limit(3);'

#Result:
# { "_id" : ObjectId("5a7fbf5cf4f463810537a958"), "abc" : 1 }
# { "_id" : ObjectId("5a7fbf5cf4f463810537a959"), "def" : 4 }
# { "_id" : ObjectId("5a7fbf5c45f8f992582aea04"), "zzz" : 2 }
# { "_id" : ObjectId("5a7fbf5c3be59428e7d58279"), "xyz" : 3 }