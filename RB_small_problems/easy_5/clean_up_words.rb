def remove_spaces(words)
  chars = words.chars
  chars.select!.with_index do |_, index|
    if index < chars.size - 1
      chars[index] == " " ? chars[index + 1] != " " : true
    else
      true
    end
  end
  chars.join
end

def cleanup(words)
  alphabet = ('a'..'z').to_a
  chars = words.chars
  chars.map! do |char|
    if alphabet.include?(char)
      char
    else
      " "
    end
  end
  remove_spaces(chars.join)
end
puts cleanup("---what's my +*& line?") == ' what s my line '
