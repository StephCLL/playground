import csv

with open("weather_data.csv") as data_file:
    data = csv.reader(data_file)
    temperatures = []
    for row in data:
        if row[1] != "temp":
            temperatures.append(int(row[1]))
    print(temperatures)

import pandas

# data = pandas.read_csv("weather_data.csv")
# data_dict = data.to_dict()
# temp_list = data["temp"].to_list()
# print(data["temp"].mean())
# print(data["temp"].max())

# Get data in columns, panda also changes the column name into attribute
# print(data["condition"])
# print(data.condition)

# Get data in rows by getting the column then picking something in column
# print(data[data.day == "Monday"])
# print(data[data.temp == data.temp.max()])
# monday = data[data.day == "Monday"]
# print(monday.condition)
# monday_temp_F = int(monday.temp) * 9/5 + 32
# print(monday_temp_F)

# Create a dataframe from scratch
data_dict = {
    "student": ["Amy", "James", "Angela"],
    "scores": [76, 56, 65]
}
data = pandas.DataFrame(data_dict)
data.to_csv("new_data.csv")
