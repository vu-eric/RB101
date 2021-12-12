puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

sum = 0
product = 1

if operation == 's'
  sum = (number * (number + 1)) / 2
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  (1..number).each {|num| product *= num}
  puts "The product of integers between 1 and #{number} is #{product}."
else
  puts "Not a valid operation"
end
