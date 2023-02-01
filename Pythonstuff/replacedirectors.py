import pandas as pd

# Load the .csv file into a pandas dataframe
df = pd.read_csv("netflix_titles.csv")
# replace missing director value as "unknown"
df['director'].fillna("unknown", inplace=True)

# get the director column
directors = df[['director']]

print(directors)