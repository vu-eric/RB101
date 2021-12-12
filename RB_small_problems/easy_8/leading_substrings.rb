def leading_substrings(str)
  substring = ''
  result = []
  str.each_char do |char|
    substring << char
    result << substring.dup
  end
  result
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
