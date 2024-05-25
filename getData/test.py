from sqlalchemy import create_engine
import archive_data as arc
import mysql.connector

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

# 执行查询 改表名
# query = "SELECT * from 10_tactics1 "
query = "SELECT `股票代码`, `股票简称`, `最新价`, `最新涨跌幅`, `均线(条件说明)`, `换手率`, `量比`, `10日均线角度`, `20日均线角度`, `30日均线角度`, `60日均线角度`, `250日均线角度`, `macd(macd值)`, `振幅`, `总市值`, `a股市值(不含限售股)`, `总股本`, `流通a股`, `流通股合计占总股本比例`, `前十大股东持股比例合计`, `最新户均持股数量`, `最新股东户数`, `dde大单净量`, `所属同花顺行业`, `前十大股东持股数量合计`, `market_code`, `code`, `trading_day`, `trading_day_1`, `trading_day_2`, `trading_day_3`, `trading_day_4`, `trading_day_5`, `trading_day_6`, `trading_day_7`, `trading_day_8`, `trading_day_9`, `trading_day_10`, `trading_day_11`, `trading_day_12`, `trading_day_13`, `trading_day_14`, `trading_day_15`, `trading_day_16`, `trading_day_17`, `trading_day_18`, `trading_day_19`, `trading_day_20`, `trading_day_21`, `trading_day_22`, `trading_day_23`, `trading_day_24`, `trading_day_25`, `trading_day_26`, `trading_day_27`, `trading_day_28`, `trading_day_29`, `trading_day_30`, `trading_day_40`, `trading_day_50`, `trading_day_60`, `trading_day_80`, `trading_day_100`, `trading_day_120`, `trading_day_150`, `trading_day_180`, `trading_day_200`, `trading_day_240`, `trading_day_300`, `trading_day_460`, `trading_day_600`, `trading_day_840`, `trading_day_960` FROM `shuju`.`20_tactics1`"
# 获取查询结果
results = arc.select_data(query)
print(len(results).__str__)
for result in results:
    insertshuju = """INSERT INTO `shuju`.`20_tactics` (`stock_code`, `stock_abbreviation`, `stock_latest_price`, `stock_latest_rise_and _fall`, `average`, `turnover_rate`, `volume_ratio`, `10_angle`, `20_angle`, `30_angle`, `60_angle`, `250_angle`, `macd`, `amplitude`, `total_market_value`, `circulating_market_value`, `general_capital`, `stock_circulation`, `circulation_ratio`, `shareholding_ratio_10`, `number_of_holdings`, `number_of_shareholders`, `dde`, `profession`, `quantity_total`, `market_code`, `code`, `trading_day`, `trading_day_1`, `trading_day_2`, `trading_day_3`, `trading_day_4`, `trading_day_5`, `trading_day_6`, `trading_day_7`, `trading_day_8`, `trading_day_9`, `trading_day_10`, `trading_day_11`, `trading_day_12`, `trading_day_13`, `trading_day_14`, `trading_day_15`, `trading_day_16`, `trading_day_17`, `trading_day_18`, `trading_day_19`, `trading_day_20`, `trading_day_21`, `trading_day_22`, `trading_day_23`, `trading_day_24`, `trading_day_25`, `trading_day_26`, `trading_day_27`, `trading_day_28`, `trading_day_29`, `trading_day_30`, `trading_day_40`, `trading_day_50`, `trading_day_60`, `trading_day_80`,`trading_day_100`, `trading_day_120`, `trading_day_150`, `trading_day_180`, `trading_day_200`, `trading_day_240`, `trading_day_300`, `trading_day_460`, `trading_day_600`, `trading_day_840`, `trading_day_960`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);"""
    # insertshuju = """INSERT INTO `shuju`.`10_tactics` (`stock_code`, `stock_abbreviation`, `stock_latest_price`, `stock_latest_rise_and _fall`, `shrinkage`, `average`, `turnover_rate`, `volume_ratio`, `10_angle`, `20_angle`, `30_angle`, `60_angle`, `250_angle`, `macd`, `amplitude`, `total_market_value`, `circulating_market_value`, `general_capital`, `stock_circulation`, `circulation_ratio`, `shareholding_ratio_10`, `number_of_holdings`, `number_of_shareholders`, `dde`, `profession`, `market_code`, `code`, `trading_day`, `trading_day_1`, `trading_day_2`, `trading_day_3`, `trading_day_4`, `trading_day_5`, `trading_day_6`, `trading_day_7`, `trading_day_8`, `trading_day_9`, `trading_day_10`, `trading_day_11`, `trading_day_12`, `trading_day_13`, `trading_day_14`, `trading_day_15`, `trading_day_16`, `trading_day_17`, `trading_day_18`, `trading_day_19`, `trading_day_20`, `trading_day_21`, `trading_day_22`, `trading_day_23`, `trading_day_24`, `trading_day_25`, `trading_day_26`, `trading_day_27`, `trading_day_28`, `trading_day_29`, `trading_day_30`, `trading_day_40`, `trading_day_50`, `trading_day_60`, `trading_day_80`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);"""
    #arc.add(insertshuju, result)
    # print(row)
    cursor.execute(insertshuju, result)
    # 提交事务
    cnx.commit()       

cursor.close()
cnx.close()