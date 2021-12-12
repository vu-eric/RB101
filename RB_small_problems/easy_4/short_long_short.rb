def short_long_short(str1, str2)
  case str1.size < str2.size
  when true
    str1 + str2 + str1
  when false
    str2 + str1 + str2
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
