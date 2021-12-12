UPPER = ('A'..'Z').to_a
LOWER = ('a'..'z').to_a

def letter_case_count(str)
  str.each_char.with_object({lowercase: 0, uppercase: 0, neither: 0}) do |char, hsh|
    if UPPER.include?(char)
      hsh[:uppercase] += 1
    elsif LOWER.include?(char)
      hsh[:lowercase] += 1
    else
      hsh[:neither] += 1
    end
  end
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
