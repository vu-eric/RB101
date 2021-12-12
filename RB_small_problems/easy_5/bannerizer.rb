def print_in_box(text)
  puts "+-" + "-" * text.size + "-+"
  puts "| " + " " * text.size + " |"
  puts "| " + "#{text}" + " |"
  puts "| " + " " * text.size + " |"
  puts "+-" + "-" * text.size + "-+"
end

print_in_box("To boldy go where no one has gone before.")
