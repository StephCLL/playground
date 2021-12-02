import requests
import lxml
from bs4 import BeautifulSoup
import smtplib


url = "https://www.amazon.com/gp/product/B08TYCWK3C/ref=ox_sc_saved_image_5?smid=ATVPDKIKX0DER&psc=1"
header = {
    "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:92.0) Gecko/20100101 Firefox/92.0",
    "Accept-Language": "en-US,en;q=0.5"
}

BUY_PRICE = 30
response = requests.get(url, headers=header)

soup = BeautifulSoup(response.content, "lxml")

title = soup.find(id="productTitle").get_text().strip()
print(title)
price = soup.find(id="priceblock_ourprice").get_text()
price_without_currency = price.split("$")[1]
price_as_float = float(price_without_currency)
print(price_as_float)

if price_as_float < BUY_PRICE:
    message = f"{title} is now {price}"

    with smtplib.SMTP("smtp.gmail.com", port=587) as connection:
        connection.starttls()
        result = connection.login("testemail123@gmail.com", "qwertyuioop1234!") # email and password
        connection.sendmail(
            from_addr="testemail123@gmail.com", # Your email
            to_addrs="testemail123@gmail.com",  # Your email
            msg=f"Subject:Amazon Price Alert!\n\n{message}\n{url}"
