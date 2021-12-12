def real_palindrome?(str)
  alpha_num = ('a'..'z').to_a + (0..9).to_a
  str_chars = str.downcase.chars
  str_chars.each_with_index do |char, index|
    str_chars[index] = "" unless alpha_num.include?(char)
  end

  str = str_chars.join

  str == str.reverse
end
puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
