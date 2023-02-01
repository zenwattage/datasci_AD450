import pandas as pd

# dict of coffee_sales
data = {'Americano': [562, 623],
        'Latte': [812, 925],
        'Espresso': [426, 384],
        'Cappuccino': [852, 756]}

# year_index
index = ['2021 Sales', '2022 Sales']
# create dataframe
df = pd.DataFrame(data, index=index)

print(df)