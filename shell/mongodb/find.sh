set -e

red='\033[0;31m'
nc='\033[0m'

mongo 127.0.0.1:27017/mydb --eval 'db.mrx.remove({});'

#test 1
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.insert([{"abc":1},{"def":4}]);'
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.insert({"zzz":2});'
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.insert({"xyz":3});'
echo -e $red"equal"$nc
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.find({"abc":1});'

#test 2 
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.insert([{"age":18},{"age":24}]);'
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.insert([{"age":27},{"age":32}]);'
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.insert({"age":29});'
echo -e $red"greater than"$nc
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.find({age:{$gt:20}});'
echo -e $red"in a range"$nc
mongo 127.0.0.1:27017/mydb --eval 'db.mrx.find({age:{$gt:25, $lt:30}});'

