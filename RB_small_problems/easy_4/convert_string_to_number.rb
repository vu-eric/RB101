def string_to_integer (str)
  digits = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
  }
  num = 0
  str.size.times do |index|
    num = num*10 + digits[str[index]]
  end
  num
end

def string_to_signed_integer(str)
  if str[0] == '+'
    string_to_integer(str[1..])
  elsif
    str[0] == '-'
    string_to_integer(str[1..]) * (-1)
  else
    string_to_integer(str)
  end
end
puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
