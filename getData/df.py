import pandas as pd  
import re  
  

import pywencai

res = pywencai.get(query='突破20日线，换手率，量比，10日线角度，，20日线角度，30日线角度，60日线角度，250日线角度，macd，振幅，总市值，流通市值，总股本，流通股本，流通比例，十大股东持股比例，户均持股数，股东户数，dde大单净量', loop= True)
print(res)
# 假设你已经有了一个DataFrame，这里我们创建一个示例DataFrame  
  
# 打印原始DataFrame的列名  
# print("原始列名：", res.columns.tolist())  
print(res)
print()
  
# 使用正则表达式替换列名中的日期标记（包括方括号）  
new_columns = [re.sub(r'\[\d{8}\]', '', col) for col in res.columns]  
  
# 将排序后的列名重新应用到DataFrame上  
res.columns = new_columns  
  
# 打印修改后的DataFrame列名  
# print("修改并排序后的列名：", res.columns.tolist())
print(res)
print()