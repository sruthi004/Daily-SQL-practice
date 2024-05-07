# AnalystBuilder
# https://www.analystbuilder.com/questions/boss-qXnDP

import pandas as pd
b1 = boss.copy()
b2 = boss.copy()
b1.drop(['boss_id'],inplace=True, axis=1)
b2.drop(['employee_id'],inplace=True, axis=1)
b2 = b2.rename(columns={'boss_id':'employee_id'})
new_boss = b1.merge(b2, on=['employee_id'], how='right')
new_boss.rename(columns={'employee_name_y':'employee_name','employee_name_x':'boss_name'}, inplace=True)
new_boss.sort_values(by=['employee_name'],inplace=True)
new_boss = new_boss[['employee_name','boss_name']]
new_boss