import pickle


with open("examplePickle", 'rb') as f:
    mydata = pickle.load(f)
    print(mydata)

