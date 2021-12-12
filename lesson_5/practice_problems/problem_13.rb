
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

new_arr = arr.sort_by do |inner_arr|
            inner_arr.select {|num| num % 2 != 0}
          end

p new_arr


