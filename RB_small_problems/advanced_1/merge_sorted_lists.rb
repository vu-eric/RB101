def merge(arr1, arr2)
  result = []
  index1 = 0
  index2 = 0

  while index1 < arr1.size || index2 < arr2.size
    if index1 == arr1.size
      return result += arr2[index2..]
    elsif index2 == arr2.size
      return result += arr1[index1..]
    elsif arr1[index1] <=arr2[index2]
      result << arr1[index1]
      index1 += 1
    else
      result << arr2[index2]
      index2 += 1
    end
  end
  result
end

puts merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
puts merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
puts merge([], [1, 4, 5]) == [1, 4, 5]
puts merge([1, 4, 5], []) == [1, 4, 5]

