def triangle(side1, side2, side3)
  sides_arr = [side1, side2, side3].sort

  case
  when sides_arr.any? {|side| side <=0}
    :invalid
  when sides_arr[0] + sides_arr[1] <=sides_arr[2]
    :invalid
  when sides_arr.count(side1) == 3
    :equilateral
  when sides_arr != sides_arr.uniq
    :isosceles
  else
    :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
