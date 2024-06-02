# AnalystBuilder
# https://www.analystbuilder.com/questions/make-it-cleaner-Ghbqf

import pandas as pd
import numpy as np
dirty_data['product_id'] = np.where(dirty_data['product_id']<=0, np.nan,dirty_data['product_id'])
dirty_data['quantity_sold'] = np.where(dirty_data['quantity_sold']<0, 0,dirty_data['quantity_sold'])
dirty_data['revenue'] = np.where(dirty_data['revenue'].isnull(), dirty_data['revenue'].mean(),dirty_data['revenue'])
dirty_data[['product_id','quantity_sold','revenue']]