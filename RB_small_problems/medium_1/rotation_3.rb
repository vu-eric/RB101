def rotate_array(arr)
  arr2 = arr.dup
  arr2 << arr2.delete_at(0)
end

def rotate_rightmost_digits(num, digits)
  num_digits = num.digits.reverse
  (num_digits[0...-digits] + rotate_array(num_digits[-digits..-1])).join.to_i
end

def max_rotation(num)
  (2..num.digits.size).reverse_each do |rotate_num|
    num = rotate_rightmost_digits(num, rotate_num)
  end
  num
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845

