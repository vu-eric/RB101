def fizzbuzz(left, right)
  result = []
  (left..right).each do |num|
    if num % 3 == 0 && num % 5 == 0
      result << "FizzBuzz"
    elsif num % 3 == 0
      result << "Fizz"
    elsif num % 5 == 0
      result << "Buzz"
    else
      result << num
    end
  end

  puts result.join(", ")
end

fizzbuzz(1, 15)
