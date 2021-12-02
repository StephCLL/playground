import smtplib
import datetime as dt
import random

my_email = "email@gmail.com"
password = "123()"

# Create a new connection with security
connection = smtplib.SMTP("smtp.gmail.com")
connection.starttls()
# Send the email, need to lower security for email
connection.login(user=my_email, password=password)
connection.sendmail(from_addr=my_email,
                    to_addrs="email2@gmail.com",
                    msg="Subject:Hello\n\nThis is the body of my email")
connection.close()
# Can also use with as so we don't need to close it





# Can get current date and time with dateTime
now = dt.datetime.now()
year = now.year  # Get year as a number
day_of_week = now.weekday()

date_of_birth = dt.datetime(year=1994, month=12, day=15)





# Challenge 1: Send motivational quote on Mondays
if day_of_week == 0:
    with open("quotes.txt") as quote_file:
        all_quotes = quote_file.readlines()
        quote = random.choice(all_quotes)
    with smtplib.SMTP("smtp.gmail.com") as connection:
        connection.starttls()
        connection.login(user=my_email, password=password)
        connection.sendmail(from_addr=my_email,
                            to_addrs="email2@gmail.com",
                            msg=f"Subject:Monday Motivation\n\n{quote}")

# Final Project: Automated Birthday Wisher on another file

