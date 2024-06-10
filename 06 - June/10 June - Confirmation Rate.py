# Leetcode
# https://leetcode.com/problems/confirmation-rate/solutions/

import pandas as pd

def confirmation_rate(signups: pd.DataFrame, confirmations: pd.DataFrame) -> pd.DataFrame:
    new = signups.merge(confirmations, on='user_id', how='left')
    new = new[['user_id','action']]
    new['confirmation_rate'] = np.where(new['action']=='confirmed', 1, 0)
    new = new.groupby(by='user_id',as_index=False)['confirmation_rate'].mean().round(2)
    return new