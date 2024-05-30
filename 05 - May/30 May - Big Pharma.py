# AnalystBuilder
# https://www.analystbuilder.com/questions/big-pharma-tFfpy

import pandas as pd;
big_pharma = big_pharma[big_pharma.money_spent>big_pharma.money_made]
big_pharma['amount'] = big_pharma['money_spent'] - big_pharma['money_made']
big_pharma