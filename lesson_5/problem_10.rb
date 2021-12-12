arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
new_arr = arr.map do |hsh|
            add_hsh = {}
            hsh.each {|letter, num| add_hsh[letter] = num += 1}
            add_hsh
          end

p new_arr
p arr
