def repeater(str)
  result = ""
  str.each_char do |char|
    result << char * 2
  end
  result
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
