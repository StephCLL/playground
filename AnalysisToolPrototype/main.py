import matplotlib
import requests
import datetime
import numpy as np
import matplotlib.pyplot as plt

TODAY = datetime.date.today()
STOCK_NAME = input("Ticker Symbol: ").upper()

STOCK_ENDPOINT = "https://www.alphavantage.co/query"
STOCK_API_KEY = "KEY"

# Get the price
stock_price_params = {
    "function": "TIME_SERIES_DAILY",
    "symbol": STOCK_NAME,
    "apikey": STOCK_API_KEY,
}
response = requests.get(STOCK_ENDPOINT, params=stock_price_params)
data = response.json()["Time Series (Daily)"]
data_list = [value for (key, value) in data.items()]  # Each item in this list is from each day
today_closing_price = data_list[0]["4. close"]
print("The closing price was: " + today_closing_price)

# Get stats
stock_stats_params = {
    "function": "OVERVIEW",
    "symbol": STOCK_NAME,
    "apikey": STOCK_API_KEY,
}

stats_response = requests.get(STOCK_ENDPOINT, params=stock_stats_params)
PE_data = stats_response.json()["PERatio"]
MA_data = stats_response.json()["50DayMovingAverage"]
if PE_data == "None":
    PE_data = "N/A"
print("The PE ratio is: " + PE_data)
print("The 50 day moving average is: " + MA_data)

# Dip check
quotient = float(today_closing_price) / float(MA_data)
percentage = round(((quotient - 1) * 100), 2)
print("The price is " + str(percentage) + "% from the 50 day moving average")

# Cash Flow
stock_CF_params = {
    "function": "CASH_FLOW",
    "symbol": STOCK_NAME,
    "apikey": STOCK_API_KEY,
}

CF_list = []
CF_date_list = []
CF_response = requests.get(STOCK_ENDPOINT, params=stock_CF_params)
CF_data = CF_response.json()["annualReports"]
for i in range(len(CF_data)):
    free_CF = "{:,}".format(int(CF_data[i]["operatingCashflow"]) - int(CF_data[i]["capitalExpenditures"]))
    CF_list.append(int(CF_data[i]["operatingCashflow"]) - int(CF_data[i]["capitalExpenditures"]))
    CF_date_list.append(CF_data[i]["fiscalDateEnding"])
    # print("The free cash flow ending in " + CF_data[i]["fiscalDateEnding"] + " is " + str(free_CF))

# Shares outstanding
stock_BS_params = {
    "function": "BALANCE_SHEET",
    "symbol": STOCK_NAME,
    "apikey": STOCK_API_KEY,
}

BS_response = requests.get(STOCK_ENDPOINT, params=stock_BS_params)
BS_data = BS_response.json()["annualReports"]
shares_outstanding_list = []
shares_outstanding_date = []
for i in range(len(BS_data)):
    shares_outstanding = "{:,}".format(int(BS_data[i]["commonStockSharesOutstanding"]))
    shares_outstanding_list.append(int(BS_data[i]["commonStockSharesOutstanding"]))
    shares_outstanding_date.append(BS_data[i]["fiscalDateEnding"])
    # print("The shares outstanding for " + BS_data[i]["fiscalDateEnding"] + " is " + str(shares_outstanding))

# Graph the CF and shares outstanding
# x_axis = np.arange(len(CF_date_list))
# CF_fig = plt.bar(x_axis, CF_list[::-1], width=0.4)
# plt.xticks(x_axis, CF_date_list[::-1])
# plt.ticklabel_format(axis="y", style='plain')
# plt.bar_label(CF_fig, labels=[f'{x:,.0f}' for x in CF_list[::-1]])

fig, (CF_fig, shares_fig) = plt.subplots(1, 2, figsize=(20, 6))
ax = CF_fig.bar(CF_date_list[::-1], CF_list[::-1])
CF_fig.set_ylabel('USD', fontsize=16)
CF_fig.set_title('Free Cash Flow', fontsize=16)
CF_fig.bar_label(ax, labels=[f'{x:,.0f}' for x in CF_list[::-1]])
CF_fig.get_yaxis().set_major_formatter(matplotlib.ticker.FuncFormatter(lambda x, p: format(int(x), ',')))

ax1 = shares_fig.bar(shares_outstanding_date[::-1], shares_outstanding_list[::-1])
shares_fig.set_ylabel('Shares', fontsize=16)
shares_fig.set_title('Share Count', fontsize=16)
shares_fig.bar_label(ax1, labels=[f'{x:,.0f}' for x in shares_outstanding_list[::-1]])
shares_fig.get_yaxis().set_major_formatter(matplotlib.ticker.FuncFormatter(lambda x, p: format(int(x), ',')))

plt.show()
