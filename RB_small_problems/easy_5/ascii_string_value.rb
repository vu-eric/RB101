def ascii_value(str)
  sum = 0
  str.size.times do |index|
    sum += str[index].ord
  end
  sum
end
puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

