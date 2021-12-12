def diamond(grid_size)
  spaces = grid_size / 2
  (1..grid_size).step(2).each do |stars|
    puts " " * spaces + "*" * stars +  " " * spaces
    spaces -= 1
  end

   spaces = 1
   (1...grid_size).step(2).reverse_each do |stars|
     puts " " * spaces + "*" * stars + " " * spaces
     spaces += 1
   end
end

diamond(9)
