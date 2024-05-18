# AnalystBuilder
# https://www.analystbuilder.com/questions/ranking-students-oiUWe

import pandas as pd;
grades['ranks']=grades['grade'].rank(method='dense',ascending=False)
grades.sort_values(by=['ranks','student_name'])