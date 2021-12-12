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

def palindromes(str)
  substrings(str).select do |substring|
    substring.size > 1 &&substring.reverse == substring
  end
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
'-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

