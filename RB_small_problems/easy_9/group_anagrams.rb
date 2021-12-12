def print_anagrams(words)
  words.each do |word1|
    anagrams = words.select do |word2|
                word1.chars.sort == word2.chars.sort
               end
    p anagrams if anagrams != []
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

print_anagrams(words)
