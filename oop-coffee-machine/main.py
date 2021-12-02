from menu import Menu, MenuItem
from coffee_maker import CoffeeMaker
from money_machine import MoneyMachine

is_on = True
coffee_maker = CoffeeMaker()
menu = Menu()
money_machine = MoneyMachine()

# Prompt user
# Allow machine to turn off with 'off' input
# Display report with 'report' input
# Check if resources sufficient
# Process coins
# Check if transaction was successful
# Make the coffee and update resources
while is_on:
    options = menu.get_items()
    user_order = input(f"What is your order? {options}: ").lower()
    if user_order == 'off':
        is_on = False
    elif user_order == 'report':
        coffee_maker.report()
        money_machine.report()
    else:
        drink = menu.find_drink(user_order)
        if drink:
            if coffee_maker.is_resource_sufficient(drink) and money_machine.make_payment(drink.cost):
                coffee_maker.make_coffee(drink)
