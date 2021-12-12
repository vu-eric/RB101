def halvsies(arr)
  half_index = arr.size.even? ? arr.size / 2 - 1 : arr.size / 2
  arr.partition.with_index do |num, index|
    index <= half_index
  end
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
