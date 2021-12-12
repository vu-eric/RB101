def balanced?(str)
  left = 0

  str.each_char do |char|
    case char
    when '(' then left += 1
    when ')'
      return false if left == 0
      left -= 1
    end
  end
  left.zero?
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
