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

def merge_sort(arr)
  return arr if arr.size == 1
  arr1, arr2 = arr.each_slice((arr.size.to_f / 2).ceil).to_a
  arr1 = merge_sort(arr1)
  arr2 = merge_sort(arr2)
  merge(arr1, arr2)
end
p merge_sort([9, 5, 7, 1])
