import pandas as pd
import os

# path = '../data/csv/data.csv'
path = os.path.dirname(os.path.abspath(__file__)) + '/../data/csv/data.csv'
df = pd.read_csv(path)

print(os.path.dirname(os.path.abspath(__file__)))
print(df)
