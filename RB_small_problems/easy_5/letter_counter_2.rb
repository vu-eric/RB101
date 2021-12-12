def alpha_size(word)
  alpha = ('a'..'z').to_a
  chars = word.downcase.chars
  chars.reduce(0) do |sum, char|
    alpha.include?(char) ? sum + 1 : sum
  end
end

def word_sizes(words)
  word_arr = words.split(" ")
  word_arr.each_with_object(Hash.new(0)) do |word, count|
      count[alpha_size(word)] += 1
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
