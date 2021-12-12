def multisum(num)
  arr = (1..num).each_with_object([]) do |curr_num, arr|
          arr << curr_num if curr_num % 3 == 0 || curr_num % 5 == 0
        end
  arr.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
