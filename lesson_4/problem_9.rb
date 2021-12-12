def titleize(words)
  word_array = words.split
  word_array.map! {|word| word.capitalize}
  word_array.join(" ")
end

words = "the flintstones rock"
puts titleize(words)

