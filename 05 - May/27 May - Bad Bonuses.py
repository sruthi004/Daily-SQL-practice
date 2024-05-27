# AnalystBuilder
# https://www.analystbuilder.com/questions/bad-bonuses-Eqhib

import pandas as pd;
new = employee.merge(bonus, left_on='employee_id', right_on='emp_id', how='left')
new = new[new.emp_id.isnull()]
new[['employee_id','name']]