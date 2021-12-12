def fibonacci(num)
  case num
  when 1 then 1
  when 2 then 1
  else
    first = 1
    second = 1
    (num-2).times do
      first, second = second, first + second
    end
    second
  end
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501

