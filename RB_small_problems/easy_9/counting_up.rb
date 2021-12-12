def sequence(num)
  (1..num).each_with_object([]) {|num, arr| arr << num}
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
