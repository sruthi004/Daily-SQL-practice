# AnalystBuilder
# https://www.analystbuilder.com/questions/tech-layoffs-CpLXE

import pandas as pd

tech_layoffs["laid_off"] = ((tech_layoffs["employees_fired"]/tech_layoffs["company_size"])*100).round(2)
tech_layoffs.drop(["company_size", "employees_fired"], axis=1, inplace = True)
tech_layoffs.sort_values(by='company', axis=0)