def rotate_array(arr)
  arr2 = arr.dup
  arr2 << arr2.delete_at(0)
end

def rotate_rightmost_digits(num, digits)
  num_digits = num.digits.reverse
  (num_digits[0...-digits] + rotate_array(num_digits[-digits..-1])).join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917

