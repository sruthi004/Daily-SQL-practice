# AnalystBuilder
# https://www.analystbuilder.com/questions/shrink-flation-ohNJw

import pandas as pd
import numpy as np
conditions = [
    (products['new_size'] < products['original_size']) & (products['original_price'] <= products['new_price']),
    (products['new_size'] > products['original_size']) & (products['original_price'] >= products['new_price'])]
choices = ['True','False']
products['Shrinkflation_Flag'] = np.select(conditions, choices, default='black')
products['size_change_percentage'] = round((products['new_size']-products['original_size'])/(products['original_size'])*100)
products['price_change_percentage'] = round((products['new_price']-products['original_price'])/(products['original_price'])*100)
products.sort_values('product_name', inplace=True)
products[['product_name','size_change_percentage','price_change_percentage','Shrinkflation_Flag']]