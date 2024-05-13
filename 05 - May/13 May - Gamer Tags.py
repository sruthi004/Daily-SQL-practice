# AnalystBuilder
# https://www.analystbuilder.com/questions/gamer-tags-ggMnJ

import pandas as pd;
gamer_tags['gamer_tag'] = gamer_tags['first_name'].str.slice(0,3)
gamer_tags['year'] = pd.DatetimeIndex(gamer_tags['birth_date']).year
gamer_tags['gamer_tag'] = gamer_tags['gamer_tag'] + gamer_tags['year'].astype(str)
gamer_tags.drop(['birth_date','game','year'], inplace=True, axis=1)
gamer_tags