# AnalystBuilder
# https://www.analystbuilder.com/questions/duplicate-emails-EPzzg

import pandas as pd;
e_g = emails.groupby(by=['email'],as_index=False)['id'].count()
e_g[e_g['id']>1]