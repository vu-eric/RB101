def reverse!(arr)
  left = 0
  right = arr.size - 1
  while left < right
    arr[left], arr[right] = arr[right], arr[left]
    left += 1
    right -= 1
  end
  arr
end

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true
list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true
list = []
puts reverse!(list) == [] # true
puts list == [] # true
