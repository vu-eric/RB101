statement = "The Flintstones Rock"

frequency_hash = {}

statement.chars.each do |letter|
  frequency_hash[letter] ||= statement.count(letter)
end

p frequency_hash
