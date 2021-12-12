def staggered_case(str)
  (0...str.size).each do |index|
    str[index] = index.even? ? str[index].upcase : str[index].downcase
  end
  str
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
