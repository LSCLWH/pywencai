import yaml
import archive_data as arc

# 执行查询 改表名
query = "SELECT * from tactics_tactics_overlining_all_1 "
# 获取查询结果
results = arc.select_data(query)
for result in results:
    # print(result)
    insertshuju = """INSERT INTO `shuju`.`tactics_tactics_overlining_all` (`stock_code`, `stock_abbreviation`, `stock_latest_price`, `stock_latest_rise_and _fall`, `overlining`, `turnover_rate`, `volume_ratio`, `5_angle`, `10_angle`, `20_angle`, `30_angle`, `60_angle`, `250_angle`, `macd`, `amplitude`, `total_market_value`, `circulating_market_value`, `general_capital`, `stock_circulation`, `circulation_ratio`, `shareholding_ratio_10`, `number_of_holdings`, `number_of_shareholders`, `dde`, `profession`, `quantity|_total`, `market_code`, `code`, `trading_day`, `trading_day_1`, `trading_day_2`, `trading_day_3`, `trading_day_4`, `trading_day_5`, `trading_day_6`, `trading_day_7`, `trading_day_8`, `trading_day_9`, `trading_day_10`, `trading_day_11`, `trading_day_12`, `trading_day_13`, `trading_day_14`, `trading_day_15`, `trading_day_16`, `trading_day_17`, `trading_day_18`, `trading_day_19`, `trading_day_20`, `trading_day_21`, `trading_day_22`, `trading_day_23`, `trading_day_24`, `trading_day_25`, `trading_day_26`, `trading_day_27`, `trading_day_28`, `trading_day_29`, `trading_day_30`, `trading_day_40`, `trading_day_50`, `trading_day_60`, `trading_day_80`) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);"""
    arc.add(insertshuju,result)

# date_sql = "SELECT trade_date FROM trading_day_date WHERE  trade_date > %s ORDER BY trade_date"
# date = '2020-02-03'
# dtes = arc.select_datas(date_sql,(date,))
# for date in dtes:
#     print(date)