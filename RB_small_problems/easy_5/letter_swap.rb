def swap(words)
  word_arr = words.split
  word_arr.map! do |word|
    case word.size
    when 1 then word
    when 2 then word.reverse
    else
      word[-1] + word[1...-1] + word[0]
    end
  end
  word_arr.join(" ")
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

