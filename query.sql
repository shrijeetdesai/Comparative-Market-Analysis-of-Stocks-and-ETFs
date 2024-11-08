WITH aapl_data AS (
    SELECT date,
           close AS aapl_close,
           daily_return AS aapl_dailyreturn,
           volume AS aapl_volume, 
		   max(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as aapl_maxreturn,
		   min(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as aapl_minreturn,
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS "30_day_aapl_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS "7_day_aapl_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 199 PRECEDING AND CURRENT ROW) AS "200_day_aapl_volatility"
    FROM stocks.stock_data_aapl
    WHERE date BETWEEN '2022-01-01' AND '2024-11-01'
),
msft_data AS (
    SELECT date,
           close AS msft_close,
           daily_return AS msft_dailyreturn,
           volume AS msft_volume,
		   max(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as msft_maxreturn,
		   min(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as msft_minreturn,
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS "30_day_msft_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS "7_day_msft_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 199 PRECEDING AND CURRENT ROW) AS "200_day_msft_volatility"
    FROM stocks.stock_data_msft
),
googl_data AS (
    SELECT date,
           close AS googl_close,
           daily_return AS googl_dailyreturn,
           volume AS googl_volume,
		   max(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as googl_maxreturn,
		   min(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as googl_minreturn,
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS "30_day_googl_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS "7_day_googl_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 199 PRECEDING AND CURRENT ROW) AS "200_day_googl_volatility"
    FROM stocks.stock_data_googl
),
spy_data AS (
    SELECT date,
           close AS spy_close,
           daily_return AS spy_dailyreturn,
           volume AS spy_volume,
		   max(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as spy_maxreturn,
		   min(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as spy_minreturn,
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS "30_day_spy_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS "7_day_spy_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 199 PRECEDING AND CURRENT ROW) AS "200_day_spy_volatility"
    FROM stocks.stock_data_spy
),
dia_data AS (
    SELECT date,
           close AS dia_close,
           daily_return AS dia_dailyreturn,
           volume AS dia_volume,
		   max(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as dia_maxreturn,
		   min(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as dia_minreturn,
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS "30_day_dia_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS "7_day_dia_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 199 PRECEDING AND CURRENT ROW) AS "200_day_dia_volatility"
    FROM stocks.etf_data_dia
),
ivv_data AS (
    SELECT date,
           close AS ivv_close,
           daily_return AS ivv_dailyreturn,
           volume AS ivv_volume,
		   max(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as ivv_maxreturn,
		   min(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as ivv_minreturn,
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS "30_day_ivv_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS "7_day_ivv_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 199 PRECEDING AND CURRENT ROW) AS "200_day_ivv_volatility"
    FROM stocks.etf_data_ivv
),
iwm_data AS (
    SELECT date,
           close AS iwm_close,
           daily_return AS iwm_dailyreturn,
           volume AS iwm_volume,
		   max(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as iwm_maxreturn,
		   min(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as iwm_minreturn,
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS "30_day_iwm_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS "7_day_iwm_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 199 PRECEDING AND CURRENT ROW) AS "200_day_iwm_volatility"
    FROM stocks.etf_data_iwm
),
qqq_data AS (
    SELECT date,
           close AS qqq_close,
           daily_return AS qqq_dailyreturn,
           volume AS qqq_volume,
		   max(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as qqq_maxreturn,
		   min(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) as qqq_minreturn,
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS "30_day_qqq_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS "7_day_qqq_volatility",
           stddev(daily_return) OVER (ORDER BY date ROWS BETWEEN 199 PRECEDING AND CURRENT ROW) AS "200_day_qqq_volatility"
    FROM stocks.etf_data_qqq
)

Select a.date, a.aapl_close, 
(Select m.msft_close from msft_data m where m.date = a.date) as msft_close,
(Select g.googl_close from googl_data g where g.date = a.date) as googl_close,
(Select s.spy_close from spy_data s where s.date=a.date) as spy_close, 
(Select d.dia_close from dia_data d where d.date=a.date) as dia_close, 
(Select i.ivv_close from ivv_data i where i.date=a.date) as ivv_close, 
(Select w.iwm_close from iwm_data w where w.date=a.date) as iwm_close, 
(Select q.qqq_close from qqq_data q where q.date=a.date) as qqq_close,
a.aapl_dailyreturn,
(Select m.msft_dailyreturn from msft_data m where m.date = a.date) as msft_dailyreturn,
(Select g.googl_dailyreturn from googl_data g where g.date = a.date) as googl_dailyreturn,
(Select s.spy_dailyreturn from spy_data s where s.date = a.date) as spy_dailyreturn,
(Select i.ivv_dailyreturn from ivv_data i where i.date = a.date) as ivv_dailyreturn,
(Select w.iwm_dailyreturn from iwm_data w where w.date = a.date) as iwm_dailyreturn,
(Select d.dia_dailyreturn from dia_data d where d.date = a.date) as dia_dailyreturn,
(Select q.qqq_dailyreturn from qqq_data q where q.date = a.date) as qqq_dailyreturn,
a.aapl_volume,
(Select m.msft_volume from msft_data m where m.date = a.date) as msft_volume,
(Select g.googl_volume from googl_data g where g.date = a.date) as googl_volume,
(Select s.spy_volume from spy_data s where s.date = a.date) as spy_volume,
(Select i.ivv_volume from ivv_data i where i.date = a.date) as ivv_volume,
(Select w.iwm_volume from iwm_data w where w.date = a.date) as iwm_volume,
(Select d.dia_volume from dia_data d where d.date = a.date) as dia_volume,
(Select q.qqq_volume from qqq_data q where q.date = a.date) as qqq_volume,
 a."30_day_aapl_volatility", a."7_day_aapl_volatility", a."200_day_aapl_volatility",
(SELECT m."30_day_msft_volatility" FROM msft_data m WHERE m.date = a.date) AS "30_day_msft_volatility",
(SELECT g."30_day_googl_volatility" FROM googl_data g WHERE g.date = a.date) AS "30_day_googl_volatility",
(SELECT s."30_day_spy_volatility" FROM spy_data s WHERE s.date = a.date) AS "30_day_spy_volatility",
(SELECT i."30_day_ivv_volatility" FROM ivv_data i WHERE i.date = a.date) AS "30_day_ivv_volatility",
(SELECT w."30_day_iwm_volatility" FROM iwm_data w WHERE w.date = a.date) AS "30_day_iwm_volatility",
(SELECT d."30_day_dia_volatility" FROM dia_data d WHERE d.date = a.date) AS "30_day_dia_volatility",
(SELECT q."30_day_qqq_volatility" FROM qqq_data q WHERE q.date = a.date) AS "30_day_qqq_volatility",
(SELECT m."7_day_msft_volatility" FROM msft_data m WHERE m.date = a.date) AS "7_day_msft_volatility",
(SELECT g."7_day_googl_volatility" FROM googl_data g WHERE g.date = a.date) AS "7_day_googl_volatility",
(SELECT s."7_day_spy_volatility" FROM spy_data s WHERE s.date = a.date) AS "7_day_spy_volatility",
(SELECT i."7_day_ivv_volatility" FROM ivv_data i WHERE i.date = a.date) AS "7_day_ivv_volatility",
(SELECT w."7_day_iwm_volatility" FROM iwm_data w WHERE w.date = a.date) AS "7_day_iwm_volatility",
(SELECT d."7_day_dia_volatility" FROM dia_data d WHERE d.date = a.date) AS "7_day_dia_volatility",
(SELECT q."7_day_qqq_volatility" FROM qqq_data q WHERE q.date = a.date) AS "7_day_qqq_volatility",
(SELECT m."200_day_msft_volatility" FROM msft_data m WHERE m.date = a.date) AS "200_day_msft_volatility",
(SELECT g."200_day_googl_volatility" FROM googl_data g WHERE g.date = a.date) AS "200_day_googl_volatility",
(SELECT s."200_day_spy_volatility" FROM spy_data s WHERE s.date = a.date) AS "200_day_spy_volatility",
(SELECT i."200_day_ivv_volatility" FROM ivv_data i WHERE i.date = a.date) AS "200_day_ivv_volatility",
(SELECT w."200_day_iwm_volatility" FROM iwm_data w WHERE w.date = a.date) AS "200_day_iwm_volatility",
(SELECT d."200_day_dia_volatility" FROM dia_data d WHERE d.date = a.date) AS "200_day_dia_volatility",
(SELECT q."200_day_qqq_volatility" FROM qqq_data q WHERE q.date = a.date) AS "200_day_qqq_volatility",
a.aapl_maxreturn,
(Select m.msft_maxreturn from msft_data m where m.date = a.date) as msft_maxreturn,
(Select g.googl_maxreturn from googl_data g where g.date = a.date) as googl_maxreturn,
(Select s.spy_maxreturn from spy_data s where s.date = a.date) as spy_maxreturn,
(Select i.ivv_maxreturn from ivv_data i where i.date = a.date) as ivv_maxreturn,
(Select w.iwm_maxreturn from iwm_data w where w.date = a.date) as iwm_maxreturn,
(Select d.dia_maxreturn from dia_data d where d.date = a.date) as dia_maxreturn,
(Select q.qqq_maxreturn from qqq_data q where q.date = a.date) as qqq_maxreturn,
 a.aapl_minreturn,
(Select m.msft_minreturn from msft_data m where m.date = a.date) as msft_minreturn,
(Select g.googl_minreturn from googl_data g where g.date = a.date) as googl_minreturn,
(Select s.spy_minreturn from spy_data s where s.date = a.date) as spy_minreturn,
(Select i.ivv_minreturn from ivv_data i where i.date = a.date) as ivv_minreturn,
(Select w.iwm_minreturn from iwm_data w where w.date = a.date) as iwm_minreturn,
(Select d.dia_minreturn from dia_data d where d.date = a.date) as dia_minreturn,
(Select q.qqq_minreturn from qqq_data q where q.date = a.date) as qqq_minreturn

FROM aapl_data a;
