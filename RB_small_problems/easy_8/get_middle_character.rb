def center_of (str)
  if str.size.even?
    str[str.size / 2 - 1] + str[str.size / 2]
  else
    str[str.size / 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
