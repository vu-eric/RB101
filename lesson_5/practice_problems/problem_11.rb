arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |nums|
            nums.select {|num| num % 3 == 0}
          end

p new_arr
