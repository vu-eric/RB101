def star(num)
  num_of_rows = num / 2 - 1

  0.upto(num_of_rows) do |row|
    spaces = num_of_rows - row
    puts (" "*row)+"*"+(" "*spaces)+"*"+(" "*spaces)+"*"
  end

  puts "*" * num

  num_of_rows.downto(0) do |row|
    spaces = num_of_rows - row
    puts (" "*row)+"*"+(" "*spaces)+"*"+(" "*spaces)+"*"
  end
end

star(9)
