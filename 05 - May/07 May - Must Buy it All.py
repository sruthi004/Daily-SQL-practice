# AnalystBuilder
# https://www.analystbuilder.com/questions/must-buy-it-all-HZoGq

import pandas as pd;
new = purchases.groupby(by='customer_id',as_index=False)['product_id'].nunique()
new = new[new['product_id']==4]
new.iloc[:,0:1]