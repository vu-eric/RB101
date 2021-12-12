require 'pry'
CARDS = {
  0 => 1,
  1 => 2,
  2 => 3,
  3 => 4,
  4 => 5,
  5 => 6,
  6 => 7,
  7 => 8,
  8 => 9,
  9 => 10,
  10 => 'Jack',
  11 => 'Queen',
  12 => 'King',
  13 => 'Ace'
}

ROYALS = %w[Jack Queen King]

def prompt(msg)
  puts "=> #{msg}"
end

def random_card(used_cards)
  card_num = ''
  loop do
    card_num = rand(0..52)
    break unless used_cards.include?(card_num)
  end

  used_cards << card_num

  CARDS[card_num / 4]
end

def joinand(arr)
  if arr.size == 2
    "#{arr[0]} and #{arr[1]}"
  elsif arr.size > 2
    new_arr = arr[0..-2] << "and #{arr[-1]}"
    new_arr.join(", ")
  end
end

def calculate_ace(sum, num_of_aces)
  num_of_aces.times do
    sum = if sum + 11 > 22 - num_of_aces
            sum + 1
          else
            sum + 11
          end
  end

  sum
end

def card_sum(cards)
  sum = 0
  cards.each do |card|
    if card.to_s.to_i == card
      sum += card
    elsif ROYALS.include?(card)
      sum += 10
    end
  end
  calculate_ace(sum, cards.count("Ace"))
end

def bust?(hand)
  card_sum(hand) > 21
end

def winner(player_hand, dealer_hand)
  player_sum = card_sum(player_hand)
  dealer_sum = card_sum(dealer_hand)

  if bust?(player_hand)
    "Dealer"
  elsif bust?(dealer_hand)
    "Player"
  elsif player_sum == dealer_sum
    "Tie"
  else
    player_sum > dealer_sum ? "Player" : "Dealer"
  end
end

def print_winner(winner)
  if winner == "Tie"
    prompt "It's a tie!"
  else
    prompt "The winner is #{winner}!"
  end
end

def print_hands(player_hand, dealer_hand, hide_dealer = true)
  system 'clear'
  if hide_dealer == true
    prompt "Dealer has: #{dealer_hand[0]}" \
           " and unknown card"
  else
    prompt "Dealer has: #{joinand(dealer_hand)}"
  end

  prompt "You have: #{joinand(player_hand)}"
end

def player_turn(player_hand, used_cards)
  prompt "What do you want to do? (h)it (s)tay"
  option = gets.chomp
  case option.downcase[0]
  when "h"
    player_hand << random_card(used_cards)
    "done" if card_sum(player_hand) >= 21
  when "s"
    "done"
  else
    prompt "Not a valid option"
  end
end

def dealer_turn(dealer_hand, used_cards)
  loop do
    if card_sum(dealer_hand) >= 17
      break
    else
      dealer_hand << random_card(used_cards)
    end
  end
end

loop do
  used_cards = []

  player_hand = [random_card(used_cards),
                 random_card(used_cards)]
  dealer_hand = [random_card(used_cards),
                 random_card(used_cards)]

  loop do
    print_hands(player_hand, dealer_hand)
    break if player_turn(player_hand, used_cards) == "done"
  end

  unless bust?(player_hand)
    dealer_turn(dealer_hand, used_cards)
  end

  print_hands(player_hand, dealer_hand, false)
  print_winner(winner(player_hand, dealer_hand))

  prompt "Play again? (Y/N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing!"
