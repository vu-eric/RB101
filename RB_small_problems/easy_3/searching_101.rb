def num_to_rank(num)
  num = num.to_s
  case num
  when '1'
    num + 'st'
  when '2'
    num + 'nd'
  when '3'
    num + 'rd'
  else
    num + 'th'
  end
end

nums = []
5.times do |index|
  puts "==> Enter the #{num_to_rank(index+1)} number"
  nums << gets.chomp.to_i
end

puts "==> Enter the last number:"
last_num = gets.chomp.to_i

if nums.include?(last_num)
  puts "The number #{last_num} appears in #{nums}."
else
  puts "The number #{last_num} does not appear in #{nums}."
end
