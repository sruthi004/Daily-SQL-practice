# AnalystBuilder
# https://www.analystbuilder.com/questions/most-reviewed-restaurant-dkcJO

import pandas as pd;
new_1 = restaurant_reviews.groupby(by=['restaurant'],as_index=False)['comment'].count()
new_2 = restaurant_reviews.groupby(by=['restaurant'],as_index=False)['rating'].mean()
fin = pd.merge(new_1, new_2, on='restaurant')
fin = fin.sort_values(['comment'],ascending=False).sort_values(['rating'],ascending=False)
fin.head(1)