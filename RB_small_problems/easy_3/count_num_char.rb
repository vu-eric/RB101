puts "Please write a word or multiple words:"
words = gets.chomp

word_arr = words.split

word_arr.map! {|word| word.length}

puts "There are #{word_arr.sum} characters in \"#{words}\"."
