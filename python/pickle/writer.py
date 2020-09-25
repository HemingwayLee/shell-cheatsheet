import pickle

mydata = "aaa"

with open("examplePickle", 'wb') as f:
    pickle.dump(mydata, f)

