def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
  card = rand(1..11)
  puts card
  return card
end


def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  gets.chomp
end


def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end


def initial_round
  card1 = deal_card.to_i
  card2 = deal_card.to_i
  card_total = card1+card2
  display_card_total(card_total)
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end


def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    new_card = deal_card
    card_total = new_card + card_total
    puts card_total
  elsif input == "s"
    puts card_total
  else 
    invalid_command
  end
end

hit?(7)



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code rbunner here
end
    
