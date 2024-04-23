# AnalystBuilder
# https://www.analystbuilder.com/questions/tmi-too-much-information-VyNhZ

import pandas as pd;
customers['first_name'] = [x.split(' ')[0] for x in customers['full_name']]
customers.drop(["full_name"], axis=1, inplace=True)
customers