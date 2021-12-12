def penultimate(str)
  words = str.split
  words[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
