def swapcase(str)
  str.each_char.with_index do |char, index|
    if char.downcase == char
      str[index] = str[index].upcase
    else
      str[index] = str[index].downcase
    end
  end
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

