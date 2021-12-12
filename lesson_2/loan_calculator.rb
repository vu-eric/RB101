# loan calculator
# takes in the loan amount, annual percentage rate, and loan duration
# outputs the monthly payment

def valid_integer?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def valid_float?(num)
  num.to_f.to_s == num && num.to_i > 0
end

loop do
  loan_amount = ''
  loop do
    puts "What is the loan amount?"
    loan_amount = gets.chomp

    if valid_float?(loan_amount) || valid_integer?(loan_amount)
      break
    else
      puts "Not a valid amount"
    end
  end

  apr = ''
  loop do
    puts "What is the Annual Percentage Rate (in percentage)?"
    apr = gets.chomp

    if valid_float?(apr) || valid_integer?(apr)
      break
    else
      puts "Not a valid apr"
    end
  end

  duration_years = ''
  loop do
    puts "What is the loan duration (in years)?"
    duration_years = gets.chomp

    if valid_integer?(duration_years)
      break
    else
      puts "Not a valid duration"
    end
  end

  monthly_interest = (apr.to_f / 100) / 12
  duration_months = duration_years.to_i * 12

  numerator = loan_amount.to_f * monthly_interest
  denominator = 1 - (1 + monthly_interest)**(-duration_months)

  monthly_payment = numerator / denominator

  puts "Your monthly payment is $#{format('%.2f', monthly_payment)}"

  puts "Do you want to keep going? (Y to continue)"
  keep_going = gets.chomp
  break unless keep_going.downcase.start_with?("y")
end
