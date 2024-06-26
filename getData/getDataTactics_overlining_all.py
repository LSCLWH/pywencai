import re
import pywencai
from sqlalchemy import create_engine
import archive_data as arc
import mysql.connector
import pandas as pd
import time

def data_write(res, date):
    # 转写数据进入数据表
    # 配置数据库连接参数
    db_config = {
        "host": "127.0.0.1",
        "user": "root",
        "password": "root",
        "database": "shuju",
    }
    # 建立数据库连接
    cnx = mysql.connector.connect(**db_config)
    # 创建游标对象
    cursor = cnx.cursor()

    # 查询date后一个日期开始的数据
    date_sql = "SELECT trade_date FROM trading_day_date WHERE  trade_date > %s ORDER BY trade_date"
    cursor.execute(date_sql, (date,))
    # 获取查询结果
    date_datas = cursor.fetchall()
    # 获取日期
    trading_day_1 = date_datas[0][0].strftime("%Y-%m-%d")
    trading_day_2 = date_datas[1][0].strftime("%Y-%m-%d")
    trading_day_3 = date_datas[2][0].strftime("%Y-%m-%d")
    trading_day_4 = date_datas[3][0].strftime("%Y-%m-%d")
    trading_day_5 = date_datas[4][0].strftime("%Y-%m-%d")
    trading_day_6 = date_datas[5][0].strftime("%Y-%m-%d")
    trading_day_7 = date_datas[6][0].strftime("%Y-%m-%d")
    trading_day_8 = date_datas[7][0].strftime("%Y-%m-%d")
    trading_day_9 = date_datas[8][0].strftime("%Y-%m-%d")
    trading_day_10 = date_datas[9][0].strftime("%Y-%m-%d")
    trading_day_11 = date_datas[10][0].strftime("%Y-%m-%d")
    trading_day_12 = date_datas[11][0].strftime("%Y-%m-%d")
    trading_day_13 = date_datas[12][0].strftime("%Y-%m-%d")
    trading_day_14 = date_datas[13][0].strftime("%Y-%m-%d")
    trading_day_15 = date_datas[14][0].strftime("%Y-%m-%d")
    trading_day_16 = date_datas[15][0].strftime("%Y-%m-%d")
    trading_day_17 = date_datas[16][0].strftime("%Y-%m-%d")
    trading_day_18 = date_datas[17][0].strftime("%Y-%m-%d")
    trading_day_19 = date_datas[18][0].strftime("%Y-%m-%d")
    trading_day_20 = date_datas[19][0].strftime("%Y-%m-%d")
    trading_day_21 = date_datas[20][0].strftime("%Y-%m-%d")
    trading_day_22 = date_datas[21][0].strftime("%Y-%m-%d")
    trading_day_23 = date_datas[22][0].strftime("%Y-%m-%d")
    trading_day_24 = date_datas[23][0].strftime("%Y-%m-%d")
    trading_day_25 = date_datas[24][0].strftime("%Y-%m-%d")
    trading_day_26 = date_datas[25][0].strftime("%Y-%m-%d")
    trading_day_27 = date_datas[26][0].strftime("%Y-%m-%d")
    trading_day_28 = date_datas[27][0].strftime("%Y-%m-%d")
    trading_day_29 = date_datas[28][0].strftime("%Y-%m-%d")
    trading_day_30 = date_datas[29][0].strftime("%Y-%m-%d")
  

    res["trading_day"] = date
    res["trading_day_1"] = trading_day_1
    res["trading_day_2"] = trading_day_2
    res["trading_day_3"] = trading_day_3
    res["trading_day_4"] = trading_day_4
    res["trading_day_5"] = trading_day_5
    res["trading_day_6"] = trading_day_6
    res["trading_day_7"] = trading_day_7
    res["trading_day_8"] = trading_day_8
    res["trading_day_9"] = trading_day_9
    res["trading_day_10"] = trading_day_10
    res["trading_day_11"] = trading_day_11
    res["trading_day_12"] = trading_day_12
    res["trading_day_13"] = trading_day_13
    res["trading_day_14"] = trading_day_14
    res["trading_day_15"] = trading_day_15
    res["trading_day_16"] = trading_day_16
    res["trading_day_17"] = trading_day_17
    res["trading_day_18"] = trading_day_18
    res["trading_day_19"] = trading_day_19
    res["trading_day_20"] = trading_day_20
    res["trading_day_21"] = trading_day_21
    res["trading_day_22"] = trading_day_22
    res["trading_day_23"] = trading_day_23
    res["trading_day_24"] = trading_day_24
    res["trading_day_25"] = trading_day_25
    res["trading_day_26"] = trading_day_26
    res["trading_day_27"] = trading_day_27
    res["trading_day_28"] = trading_day_28
    res["trading_day_29"] = trading_day_29
    res["trading_day_30"] = trading_day_30

    res["trading_day_40"] = None
    if len(date_datas) > 39:
        trading_day_40 = date_datas[39][0].strftime("%Y-%m-%d")
        res["trading_day_40"] = trading_day_40

    res["trading_day_50"] = None
    if len(date_datas) > 49:
        trading_day_50 = date_datas[49][0].strftime("%Y-%m-%d")
        res["trading_day_50"] = trading_day_50


    res["trading_day_60"] = None
    if len(date_datas) > 59:
        trading_day_60 = date_datas[59][0].strftime("%Y-%m-%d")
        res["trading_day_60"] = trading_day_60

    res["trading_day_80"] = None
    if len(date_datas) > 79:
        trading_day_80 = date_datas[79][0].strftime("%Y-%m-%d")
        res["trading_day_80"] = trading_day_80

    res["trading_day_100"] = None
    if len(date_datas) > 99:
        trading_day_100 = date_datas[99][0].strftime("%Y-%m-%d")
        res["trading_day_100"] = trading_day_100

    res["trading_day_120"] = None
    if len(date_datas) > 119:
        trading_day_120 = date_datas[119][0].strftime("%Y-%m-%d")
        res["trading_day_120"] = trading_day_120

    res["trading_day_150"] = None
    if len(date_datas) > 149:
        trading_day_150 = date_datas[149][0].strftime("%Y-%m-%d")
        res["trading_day_150"] = trading_day_150

    res["trading_day_180"] = None
    if len(date_datas) > 179:
        trading_day_180 = date_datas[179][0].strftime("%Y-%m-%d")
        res["trading_day_180"] = trading_day_180

    res["trading_day_200"] = None
    if len(date_datas) > 199:
        trading_day_200 = date_datas[199][0].strftime("%Y-%m-%d")
        res["trading_day_200"] = trading_day_200

    res["trading_day_240"] = None
    if len(date_datas) > 239:
        trading_day_240 = date_datas[239][0].strftime("%Y-%m-%d")
        res["trading_day_240"] = trading_day_240

    res["trading_day_300"] = None
    if len(date_datas) > 299:
        trading_day_300 = date_datas[299][0].strftime("%Y-%m-%d")
        res["trading_day_300"] = trading_day_300

    res["trading_day_460"] = None
    if len(date_datas) >459:
        trading_day_460 = date_datas[459][0].strftime("%Y-%m-%d")
        res["trading_day_460"] = trading_day_460

    res["trading_day_600"] = None
    if len(date_datas) > 599:
        trading_day_600 = date_datas[599][0].strftime("%Y-%m-%d")
        res["trading_day_600"] = trading_day_600

    res["trading_day_840"] = None
    if len(date_datas) > 839:
        trading_day_840 = date_datas[839][0].strftime("%Y-%m-%d")
        res["trading_day_840"] = trading_day_840

    res["trading_day_960"] = None
    if len(date_datas) > 960:
        trading_day_960 = date_datas[959][0].strftime("%Y-%m-%d")
        res["trading_day_960"] = trading_day_960
    # # 批量写入临时表
    engine = create_engine(
        "mysql+pymysql://root:root@localhost:3306/shuju?charset=utf8"
    )
    res.to_sql(name="tactics_overlining_all_1", con=engine, if_exists="append", index=False)

    try:
        update_sql = "UPDATE trading_day_date SET is_tactics_overlining_all = 1 WHERE trade_date = %s"
        cursor.execute(update_sql, (get_data_date[0],))
        # 提交事务
        cnx.commit()
    except:
        return False
    finally:
        # 关闭游标和连接
        cursor.close()
        cnx.close()
    return True


# # 读取配置文件 改
# with open('tactics.yaml', 'r',encoding='utf-8') as f:
#     config = yaml.safe_load(f)

# # 获取配置信息  改
# tactics_overlining_all = config['tactics_overlining_all']
#该标识
query_sql = "SELECT trade_date FROM trading_day_date WHERE is_tactics_overlining_all = 0 AND trade_date BETWEEN '2000-01-01' AND '2023-12-31'  ORDER BY trade_date"
get_data_dates = arc.select_data(query_sql)
# print(get_data_date)
for get_data_date in get_data_dates:
    # 记录开始时间
    start_time = time.time()
    var = (get_data_date[0].strftime("%Y-%m-%d")+ '长上影线，换手率，量比，5日线角度,10日线角度，20日线角度，30日线角度，60日线角度，250日线角度，macd，振幅，总市值，流通市值，总股本，流通股本，流通比例，十大股东持股比例，户均持股数，股东户数，dde大单净量')
    res = pywencai.get(query=var,loop=True,)
    # 判断是否dataframe对象
    is_dataframe = isinstance(res, pd.DataFrame)
    # 非空且为dataframe对象
    if res is not None and is_dataframe == True:
        # 使用正则表达式替换列名中的日期标记（包括方括号）  
        new_columns = [re.sub(r'\[\d{8}\]', '', col) for col in res.columns]  
        # 将列名重新应用到DataFrame上  
        res.columns = new_columns  
        # 调用写入数据库函数
        is_wdite = data_write(res, get_data_date[0])
        # 记录结束时间
        end_time = time.time()
        # 计算并打印运行时间
        run_time = end_time - start_time
        # 如果运行时间小于5
        if run_time < 5:
            time.sleep(5)
        print(get_data_date[0].strftime("%Y-%m-%d") + "-获取成功，数据：" + str(res.shape[0]) + "条"+f"程序运行时间为: {run_time:.6f} 秒")
        # print(f"程序运行时间为: {run_time:.6f} 秒")
    else:
        # 获取失败输出信息
        time.sleep(2)
        print(var + "获取失败，暂停2秒")