hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = ["a","e","i","o","u"]

hsh.each do |_, words|
  str = words.join.chars

  str.each {|letter| puts letter if VOWELS.include?(letter)}
end


