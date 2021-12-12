require "pry"

VALID_CHOICES = %w(rock paper scissors spock lizard)

WIN = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'spock' => %w(rock scissors),
  'lizard' => %w(paper spock)
}

ABBREVIATIONS = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}

def prompt(message)
  puts "=> #{message}"
end

def get_winner(player, computer)
  if WIN[player].include?(computer)
    "player"
  elsif WIN[computer].include?(player)
    "computer"
  end
end

def display_results(winner, scores)
  case winner
  when "player" then prompt("You won!")
  when "computer" then prompt("Computer won!")
  else prompt("It's a tie!")
  end

  prompt("Current Score:
         You: #{scores['player']}
         Computer: #{scores['computer']}")
end

def update_score(winner, scores)
  scores[winner] += 1 if winner
end

scores = {
  "player" => 0,
  "computer" => 0
}

match_winner = ''

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    choice = ABBREVIATIONS[choice] if ABBREVIATIONS.key?(choice)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose: #{choice}; Computer chose: #{computer_choice}")

  winner = get_winner(choice, computer_choice)

  update_score(winner, scores)
  display_results(winner, scores)

end

prompt("Thank you for playing. Good bye!")
