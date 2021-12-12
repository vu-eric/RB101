def crunch(str)
  chars = str.chars
  ans = chars.each_with_object([]) do |char, arr|
          arr << char if arr.last != char
        end
  ans.join
end


puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
