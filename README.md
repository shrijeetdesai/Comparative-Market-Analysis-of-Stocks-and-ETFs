# Comparative-Market-Analysis-of-Stocks-and-ETFs

This project presents a comprehensive dashboard for analyzing the performance of selected stocks and ETFs over time. Using data from Yahoo Finance, I have visualized various metrics to compare trends, volatility, trading volumes, and returns across multiple assets. The dashboard was created using Apache Superset, enabling users to interactively explore market trends and performance indicators.

# Table of Contents
## Introduction
## Data Sources
## Dashboard Features
## SQL Query Structure
## Technologies Used

### Introduction
The goal of this project is to provide insights into stock and ETF performance by visualizing key metrics over specified time periods. This dashboard enables analysts to compare the closing prices, daily returns, trading volumes, and rolling volatility for a selection of assets. Rolling windows of 30, 7, and 200 days are used to observe trends in volatility, while maximum and minimum returns are calculated over 30-day periods to highlight the performance peaks and troughs.

### Data Sources
The data used in this project was obtained from Yahoo Finance and includes the following stocks and ETFs:

**Stocks:** Apple (AAPL), Microsoft (MSFT), Alphabet (GOOGL),  Comcast (CMCSA).
**ETFs:** SPDR Dow Jones Industrial Average (DIA), iShares Core S&P 500 (IVV), iShares Russell 2000 (IWM), Invesco QQQ Trust (QQQ).

### Dashboard Features
The dashboard is designed to provide a comprehensive view of various metrics for selected stocks and ETFs. It includes the following visualizations:

1. **Closing Prices:** Line charts depicting the closing prices of selected stocks (e.g., AAPL, MSFT, GOOGL) and ETFs (e.g., IVV, QQQ, DIA) over time, helping users track price trends and compare performance.

2. **Daily Returns:** Line charts showing the daily returns of the selected stocks and ETFs, enabling users to observe the day-to-day percentage changes in value and compare the volatility of different assets.

3. **Traded Volume:** Bar charts showing the average trading volume for each stock and ETF on a daily basis. This visualization highlights liquidity and investor interest in each asset.

4. **Volatility:** Line charts representing the volatility of different stocks and ETFs over time, based on historical price data. This helps users assess the risk associated with each asset by visualizing fluctuations in their returns.

5. **Maximum and Minimum Monthly Returns:** Tables displaying the highest and lowest returns for each stock and ETF on a monthly basis. These tables allow users to quickly see which assets had the best and worst performance each month.

Each visualization provides valuable insights into the trends, volatility, and trading activity of various assets, making it easier to analyze and compare their behavior under different market conditions.

### SQL Query Structure
The data was transformed and aggregated using a series of SQL queries to extract relevant metrics for each asset (stocks and ETFs), enabling comparative analysis across different timeframes and indicators. Here’s a summary of the query structure:

1. **Closing Prices:** The query retrieves closing prices for each selected stock (AAPL, MSFT, GOOGL, etc.) and ETF (DIA, IVV, QQQ, etc.) on the same date, allowing for side-by-side comparison across assets.

2. **Daily Return:** Calculated by taking the percentage change from the previous day’s closing price. Each asset's daily return is stored in a specific column (e.g., aapl_daily_return), allowing us to observe daily performance fluctuations.

3. **Traded Volume:** The total trading volume for each asset is extracted for each date. This helps analyze liquidity and investor interest by comparing the average volume of trades across assets.

4. **Maximum and Minimum Returns:** Calculated over a specified time window (e.g., a 30-day rolling period) to identify the highest and lowest returns, providing insights into peak performance and downside risk for each asset.

This SQL query structure allows for a thorough comparative analysis of stocks and ETFs by aggregating key financial metrics across different timeframes, helping to reveal market trends and volatility under various market conditions.

### Technologies Used
**Apache Superset:** For interactive data visualization.
**PostgreSQL:** Database to store and query financial data.
**Yahoo Finance API:** For obtaining historical stock and ETF data.
