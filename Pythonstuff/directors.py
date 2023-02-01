import pandas as pd

# Load the .csv file into a pandas dataframe
df = pd.read_csv("./netflix_titles.csv")

# list of unique directors
directors = df['director'].unique().tolist()

print(directors)