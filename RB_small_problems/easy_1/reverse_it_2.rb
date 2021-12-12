def reverse_words(str)
  words = str.split
  words.each do |word|
    word.reverse! if word.length >= 5
  end
  words.join(" ")
end
