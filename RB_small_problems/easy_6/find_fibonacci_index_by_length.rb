def find_fibonacci_index_by_length (num)
  index = 3
  loop do
    break if fibonacci(index - 1).digits.size >=num
    index += 1
  end
  index
end

def fibonacci (num)
  case num
  when 0 then 1
  when 1 then 1
  else fibonacci(num - 1) + fibonacci(num - 2)
  end
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
