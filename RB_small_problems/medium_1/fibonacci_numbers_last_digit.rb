def fibonacci_last(num)
  return 1 if num <= 2
  first = 1
  second = 1
  3.upto(num).each do
    first, second = second, (first + second) % 10
  end
  second
end

puts fibonacci_last(123456789)
