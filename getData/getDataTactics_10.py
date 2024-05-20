import pywencai
from sqlalchemy import create_engine
import archive_data as arc
import mysql.connector
import pandas as pd
import time
import yaml

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
    trading_day_40 = date_datas[39][0].strftime("%Y-%m-%d")
    trading_day_50 = date_datas[49][0].strftime("%Y-%m-%d")
    trading_day_60 = date_datas[59][0].strftime("%Y-%m-%d")
    trading_day_80 = date_datas[79][0].strftime("%Y-%m-%d")
    # trading_day_100 = date_datas[1][0].strftime("%Y-%m-%d")
    # trading_day_120 = date_datas[1][0].strftime("%Y-%m-%d")
    # trading_day_150 = date_datas[1][0].strftime("%Y-%m-%d")
    # trading_day_180 = date_datas[1][0].strftime("%Y-%m-%d")
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
    res["trading_day_40"] = trading_day_40
    res["trading_day_50"] = trading_day_50
    res["trading_day_60"] = trading_day_60
    res["trading_day_80"] = trading_day_80
    # # 批量写入临时表
    engine = create_engine(
        "mysql+pymysql://root:root@localhost:3306/shuju?charset=utf8"
    )
    res.to_sql(name="10_tactics1", con=engine, if_exists="replace", index=False)

    try:
        # 执行查询 改表名
        query = "SELECT * from 10_tactics1 "
        # 获取查询结果
        results = arc.select_data(query)
        for result in results:
            insertshuju = """INSERT INTO `shuju`.`10_tactics` (`stock_code`, `stock_abbreviation`, `stock_latest_price`, `stock_latest_rise_and _fall`, `shrinkage`, `average`, `turnover_rate`, `volume_ratio`, `10_angle`, `20_angle`, `30_angle`, `60_angle`, `250_angle`, `macd`, `amplitude`, `total_market_value`, `circulating_market_value`, `general_capital`, `stock_circulation`, `circulation_ratio`, `shareholding_ratio_10`, `number_of_holdings`, `number_of_shareholders`, `dde`, `profession`, `market_code`, `code`, `trading_day`, `trading_day_1`, `trading_day_2`, `trading_day_3`, `trading_day_4`, `trading_day_5`, `trading_day_6`, `trading_day_7`, `trading_day_8`, `trading_day_9`, `trading_day_10`, `trading_day_11`, `trading_day_12`, `trading_day_13`, `trading_day_14`, `trading_day_15`, `trading_day_16`, `trading_day_17`, `trading_day_18`, `trading_day_19`, `trading_day_20`, `trading_day_21`, `trading_day_22`, `trading_day_23`, `trading_day_24`, `trading_day_25`, `trading_day_26`, `trading_day_27`, `trading_day_28`, `trading_day_29`, `trading_day_30`, `trading_day_40`, `trading_day_50`, `trading_day_60`, `trading_day_80`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);"""
            arc.add(insertshuju, result)
    except:
        return False
    finally:
        # 关闭游标和连接
        cursor.close()
        cnx.close()
    return True


# 读取配置文件 改
with open('tactics.yaml', 'r',encoding='utf-8') as f:
    config = yaml.safe_load(f)

# 获取配置信息  改
tactics_10 = config['tactics_10']
#该标识
query_sql = "SELECT trade_date FROM trading_day_date WHERE is_10 = 0 AND trade_date BETWEEN '2020-01-01' AND '2023-12-31'  ORDER BY trade_date"
get_data_dates = arc.select_data(query_sql)
# print(get_data_date)
for get_data_date in get_data_dates:
    # 记录开始时间
    start_time = time.time()
    var = (get_data_date[0].strftime("%Y-%m-%d")+ tactics_10)
    res = pywencai.get(query=var,loop=True,)
    # 判断是否dataframe对象
    is_dataframe = isinstance(res, pd.DataFrame)
    # 非空且为dataframe对象
    if res is not None and is_dataframe == True:
        # 调用写入数据库函数
        is_wdite = data_write(res, get_data_date[0])
        # 修改获取数据标记 改标识
        update_sql = "UPDATE trading_day_date SET is_10 = 1 WHERE trade_date = %s"
        arc.up_data(update_sql, (get_data_date[0],))
        print(var + "获取成功，数据：" + str(res.shape[0]) + "条")
        # 记录结束时间
        end_time = time.time()
        # 计算并打印运行时间
        run_time = end_time - start_time
        # 如果运行时间小于10
        if run_time < 5:
            time.sleep(5)
            print("暂停5秒")
        print(f"程序运行时间为: {run_time:.6f} 秒")
    else:
        # 获取失败输出信息
        time.sleep(2)
        print(var + "获取失败，暂停2秒")