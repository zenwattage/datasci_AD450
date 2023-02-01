import pandas as pd

df = pd.read_csv("./netflix_titles.csv")
# filter down to only type of movie
df = df[df['type'] == 'Movie']
# select the 'title' and 'type' columns
df = df[['title', 'type']]

print(df)

