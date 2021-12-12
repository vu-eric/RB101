def double_consonants(str)
  result = ''
  str.each_char do |char|
    if char =~ /[A-Za-z]/ && char =~ /[^AEIOUaeiou]/
      result << char * 2
    else
      result << char
    end
  end
  result
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
