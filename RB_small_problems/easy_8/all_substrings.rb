def leading_substrings(str)
  substring = ''
  result = []
  str.each_char do |char|
    substring << char
    result << substring.dup
  end
  result
end

def substrings(str)
  result = []
  (0...str.size).each do |index|
    result << leading_substrings(str[index..])
  end
  result.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

