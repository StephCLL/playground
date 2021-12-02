MENU = {
    "espresso": {
        "ingredients": {
            "water": 50,
            "coffee": 18,
        },
        "cost": 1.5,
    },
    "latte": {
        "ingredients": {
            "water": 200,
            "milk": 150,
            "coffee": 24,
        },
        "cost": 2.5,
    },
    "cappuccino": {
        "ingredients": {
            "water": 250,
            "milk": 100,
            "coffee": 24,
        },
        "cost": 3.0,
    }
}

resources = {
    "water": 300,
    "milk": 200,
    "coffee": 100,
}

enough_ingredients = True
resources['money'] = 0


def process_user_order(order):
    if order == "espresso":
        return MENU["espresso"]['ingredients']
    elif order == "latte":
        return MENU["latte"]['ingredients']
    elif order == "cappuccino":
        return MENU["cappuccino"]['ingredients']
    elif order == "report":
        return resources


def have_enough_ingredients(resources_remaining, resources_needed):
    for ingredient in resources_needed:
        if ingredient not in resources_remaining:
            return False
        elif resources_needed[ingredient] > resources_remaining[ingredient]:
            print(f"Sorry there is not enough {ingredient}")
            return False
    return True


def calculate(resources_remaining, resources_needed):
    for ingredients in resources_needed:
        resources_remaining[ingredients] = resources_remaining[ingredients] - resources_needed[ingredients]
    return resources_remaining


def money_processing(quarters, dimes, nickels, pennies):
    amount = quarters * .25 + dimes * .10 + nickels * .05 + pennies * .01
    return amount


while enough_ingredients:
    # Ask user for order
    user_order = input("What would you like today? (espresso/latte/cappuccino): ").lower()
    if user_order == 'off':
        break
    # Process the order
    coffee_ingredients = process_user_order(user_order)
    if coffee_ingredients == resources:
        print(resources)
    # Check if enough resources for order
    elif have_enough_ingredients(resources, coffee_ingredients):
        # Ask user for payment and process
        print("Please insert coins.")
        quarters_inserted = int(input("How many quarters? "))
        dimes_inserted = int(input("How many dimes? "))
        nickels_inserted = int(input("How many nickles? "))
        pennies_inserted = int(input("How many pennies? "))
        amount_inserted = round(money_processing(quarters_inserted, dimes_inserted, nickels_inserted, pennies_inserted),
                                2)
        if amount_inserted < MENU[user_order]['cost']:
            print("Not enough money")
        else:
            # Give back change
            change = amount_inserted - MENU[user_order]['cost']
            print(f"Here is {change} in change.")
            print(f"Here is your {user_order} ☕️ Enjoy!")
            # Update the resources
            resources = calculate(resources, coffee_ingredients)
            resources['money'] += MENU[user_order]['cost']
    else:
        enough_ingredients = False


