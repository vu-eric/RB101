def sequence(num1, num2)
  (1..num1).each_with_object([]) do |multiplier, arr|
    arr << num2 * multiplier
  end
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
