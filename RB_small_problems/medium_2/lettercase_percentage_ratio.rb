def letter_percentages(str)
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }
  total_chars = str.chars.size

  str.each_char do |char|
    if char =~ /[a-z]/
      percentages[:lowercase] += 1
    elsif char =~ /[A-Z]/
      percentages[:uppercase] += 1
    else
      percentages[:neither] += 1
    end
  end

  percentages.each do |key, value|
    percentages[key] = ((value.to_f / total_chars) * 100).round(1)
  end
end

puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
