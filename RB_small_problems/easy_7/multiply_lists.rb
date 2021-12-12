def multiply_list(arr1, arr2)
  (0...arr1.size).each_with_object([]) do |index, arr|
    arr << arr1[index] * arr2[index]
  end
end
puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
