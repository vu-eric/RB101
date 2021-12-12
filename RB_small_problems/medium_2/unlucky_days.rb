require 'date'

def friday_13th(year)
  Date.new(year).upto(Date.new(year+1)).select do |date|
    date.friday? && date.day == 13
  end.size
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
