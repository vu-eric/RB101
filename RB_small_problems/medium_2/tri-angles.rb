def triangle(angle1, angle2, angle3)
  angle_arr = [angle1, angle2, angle3]

  case
  when angle_arr.any? {|angle| angle <= 0} then :invalid
  when angle_arr.sum != 180 then :invalid
  when angle_arr.include?(90) then :right
  when angle_arr.max > 90 then :obtuse
  else :acute
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
