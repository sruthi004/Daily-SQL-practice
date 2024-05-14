# AnalystBuilder
# https://www.analystbuilder.com/questions/computer-replacement-IjNgF

import pandas as pd;
import numpy as np;
computer_replacement['date_activated'] = computer_replacement['date_activated'].astype('datetime64[ns]')
computer_replacement['years'] =  (pd.to_datetime("2023-01-01") - (computer_replacement['date_activated'])) / np.timedelta64(1, 'D')/365
computer_replacement = computer_replacement[computer_replacement['years']>5]
computer_replacement[['computer_id']]