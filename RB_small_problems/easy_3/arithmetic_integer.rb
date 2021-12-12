puts "==> Enter the first number:"
first_num = gets.chomp.to_i

puts "==> Enter the second number:"
second_num = gets.chomp.to_i

operators = ["+", "-", "*", "/", "%", "**"]

operators.each do |op|
  puts "==> #{first_num} #{ op } #{second_num} = #{first_num.send(op,second_num)}"
end






