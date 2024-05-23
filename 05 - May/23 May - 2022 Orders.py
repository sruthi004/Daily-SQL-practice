# AnalystBuilder
# https://www.analystbuilder.com/questions/2022-orders-WsKLr

import pandas as pd;
new = users.join(orders,how='inner', lsuffix='user_id', rsuffix='buyer_id')
new['join_year'] = pd.DatetimeIndex(new['join_date']).year
new['order_year'] = pd.DatetimeIndex(new['order_date']).year
fin = new[(new['join_year']==2022) & (new['order_year']==2022)]
fin[['user_id']]