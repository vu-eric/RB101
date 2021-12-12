def sum_square_difference(num)
  square_sum = 1.upto(num).sum ** 2
  sum_square = 1.upto(num).inject {|sum, num| sum += num ** 2}
  square_sum - sum_square
end


puts sum_square_difference(3) == 22
    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
