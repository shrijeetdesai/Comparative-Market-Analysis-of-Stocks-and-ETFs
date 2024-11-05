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

**Stocks:** Apple (AAPL), Microsoft (MSFT), Alphabet (GOOGL), SPDR S&P 500 (SPY)
**ETFs:** SPDR Dow Jones Industrial Average (DIA), iShares Core S&P 500 (IVV), iShares Russell 2000 (IWM), Invesco QQQ Trust (QQQ)

### Dashboard Features
The dashboard is structured to provide the following visualizations:

**Closing Prices:** Line charts showing the closing prices of selected stocks and ETFs.
**Rolling Volatility:** Line charts displaying volatility calculated over 30-day and 200-day rolling windows for both stocks and ETFs.
**Traded Volume:** Tables presenting the total traded volume for each stock and ETF.
**Daily Returns:** Line charts showing daily returns for stocks and ETFs.
**Maximum and Minimum Returns:** Bar charts displaying maximum and minimum returns over a 30-day rolling window.
Each visualization offers insights into the trends and performance of different assets, making it easier to compare their behavior under different market conditions.

### SQL Query Structure
The data was transformed using a series of SQL queries to calculate daily returns, rolling volatility, and maximum and minimum returns. Here’s a summary of the query structure:

**Daily Return:** Calculated using the daily_return column, which reflects the percentage change from the previous day's closing price.
**Rolling Volatility:** Computed using the stddev function over 7-day, 30-day, and 200-day windows to measure short-, medium-, and long-term volatility.
**Max/Min Returns:** Calculated over a 30-day rolling window to capture peak performance and downside risk for each asset.

### Technologies Used
**Apache Superset:** For interactive data visualization.
**PostgreSQL:** Database to store and query financial data.
**Yahoo Finance API:** For obtaining historical stock and ETF data.
**SQL Window Functions:** To calculate rolling statistics and daily returns.
