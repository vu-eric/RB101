def block_word?(word)
  arr1 = %W(B X D C N G R F J H V L Z)
  arr2 = %W(O K Q P A T E S W U I Y M)

  word.upcase.each_char do |char|
    if arr1.include?(char)
      arr2[arr1.index(char)] = " "
      arr1[arr1.index(char)] = " "
    elsif arr2.include?(char)
      arr1[arr2.index(char)] = " "
      arr2[arr2.index(char)] = " "
    else
      return false
    end
  end
  p arr1
  p arr2
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true

