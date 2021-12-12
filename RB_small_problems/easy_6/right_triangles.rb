def triangle(num)
  (1..num).each do |stars|
    puts " " * (9 - stars) + "*" * stars
  end
end

triangle(5)

