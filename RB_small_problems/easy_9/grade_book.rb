GRADES = {
  90 => 'A',
  80 => 'B',
  70 => 'C',
  60 => 'D'
}
def get_grade (score1, score2, score3)
  average = (score1 + score2 + score3) / 3
  rounded_average = (average / 10) * 10
  if GRADES.key?(rounded_average)
    GRADES[rounded_average]
  else
    'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
