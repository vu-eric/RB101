
def integer_to_string(num)
  digits = {
    1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
    6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
  }
  str = ''
  while num != 0
    str = digits[num % 10] + str
    num = num / 10
  end

  if str == ''
    '0'
  else
    str
  end
end

def signed_integer_to_string(num)
  case num <=> 0
  when -1 then "-" + integer_to_string(num * (-1))
  when 1 then "+" + integer_to_string(num)
  else integer_to_string(num)
  end
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
