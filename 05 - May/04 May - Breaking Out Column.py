# AnalystBuilder
# https://www.analystbuilder.com/questions/breaking-out-column-nzJbr

import pandas as pd;
addresses['split']= addresses['address'].str.split('-', n=3)
addresses=pd.DataFrame(addresses.split.values.tolist(),columns=['street','city','state','zip_code'])
addresses.head()