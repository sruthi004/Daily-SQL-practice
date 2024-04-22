# AnalystBuilder
# https://www.analystbuilder.com/questions/separation-DbHMu

import pandas as pd;
bad_data['ID'] = bad_data['id'].str[:5]
bad_data['First_Name'] = bad_data['id'].str[5:]
bad_data.drop(["id"], axis=1, inplace = True)
bad_data.head()