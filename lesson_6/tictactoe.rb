require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = "O"

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i

    if empty_squares(brd).include?(square)
      break
    else
      prompt "Sorry, that's not a valid choice"
    end
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd)
  WINNING_LINES.each do |line|
    squares = line.zip(brd.values_at(*line)).to_h
    if squares.values.count(PLAYER_MARKER) == 2
      return squares.key(" ") if squares.values.include?(" ")
    end
  end
  nil
end

def find_winning_square(brd)
  WINNING_LINES.each do |line|
    squares = line.zip(brd.values_at(*line)).to_h
    if squares.values.count(COMPUTER_MARKER) == 2
      return squares.key(" ") if squares.values.include?(" ")
    end
  end
  nil
end

def place_piece!(brd, curr_player)
  if curr_player == "Player"
    player_places_piece!(brd)
  elsif curr_player == "Computer"
    computer_places_piece!(brd)
  end
end

def computer_places_piece!(brd)
  square = if !find_winning_square(brd).nil?
             find_winning_square(brd)
           elsif !find_at_risk_square(brd).nil?
             find_at_risk_square(brd)
           elsif empty_squares(brd).include?(5)
             5
           else
             empty_squares(brd).sample
           end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def alternate_player(curr_player)
  if curr_player == "Player"
    "Computer"
  else
    "Player"
  end
end

loop do
  scores = { "Player" => 0, "Computer" => 0 }
  winner = ''
  loop do
    board = initialize_board
    display_board(board)
    current_player = ''

    loop do
      prompt "Who goes first? (1) Player (2) Computer (3) Random"

      first_turn = gets.chomp.to_i
      first_turn = [1, 2].sample if first_turn == 3

      case first_turn
      when 1
        current_player = "Player"
        break
      when 2
        current_player = "Computer"
        break
      else
        prompt "That's not a valid choice"
      end
    end

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      winner = detect_winner(board)
      scores[winner] += 1
      prompt "#{winner} won!"
    else
      prompt "It's a tie!"
    end

    prompt "Current Score: Player: #{scores['Player']}" \
           " Computer: #{scores['Computer']}"

    prompt "Press any key to continue"
    gets.chomp

    break if scores.value?(5)
  end

  prompt "#{winner} won the match!"

  prompt "Play again? (y or n)"

  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
