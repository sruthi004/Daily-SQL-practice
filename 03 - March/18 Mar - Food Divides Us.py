# AnalystBuilder
# https://www.analystbuilder.com/questions/food-divides-us-GvhLL

import pandas as pd

food_regions.groupby(by=['region'], axis=0)['fast_food_millions'].sum()
food_regions.sort_values(by='fast_food_millions',ascending=False)
food_regions.iloc[0:1,1:2]