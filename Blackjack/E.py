import art
import random

blackjack = True
playing_game = False
cards = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]

def deal_card():
  random_card = random.choice(cards)
  return random_card

def calculate_score(player_hand): 
  total_score = sum(player_hand)
  if 11 in player_hand and total_score > 21:
    player_hand.remove(11)
    player_hand.append(1)
    total_score = sum(player_hand)
  return total_score

def compare(user, computer):
  print(f"Computer's final hand is {computer}, with a final score of {calculate_score(computer)}")
  if calculate_score(user) == 21 and calculate_score(computer) == 21:
    print("It's a tie")
  elif calculate_score(user) > calculate_score(computer):
    print("You win!")
  else:
    print("You lose.")

while blackjack: 
  start_game = input("Do you want to play a game of Blackjack? Type 'y' or 'no': ")
  if start_game == 'y':
    print(art.logo)
    user_hand = [deal_card()]
    computer_hand = [deal_card()]
    playing_game = True

  while playing_game: 
    user_hand.append(deal_card())
    computer_hand.append(deal_card())
    print(f"Your cards: {user_hand}, current score: {calculate_score(user_hand)}")
    print(f"Computer's first card: {computer_hand[1]}")
    if calculate_score(user_hand) == 21:
      print("You win!")
      playing_game = False
    elif calculate_score(user_hand) > 21:
      print("You lose!")
      playing_game = False
    else: 
      continue_game = input("Type 'y' to get another card or type 'n' to pass: ")
      if continue_game == 'n':
        print(f"Your final score is: {calculate_score(user_hand)}")
        while calculate_score(computer_hand) < 17 or calculate_score(computer_hand) < calculate_score(user_hand): 
          computer_hand.append((deal_card))
          calculate_score(computer_hand)
        compare(user_hand, computer_hand)
        playing_game = False
  if start_game == 'n':
    blackjack = False