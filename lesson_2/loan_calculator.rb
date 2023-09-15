def calculate_monthly_payments(loan_amount, monthly_interest_rate, loan_duration)
  loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))
end

def prompt(message)
  Kernel.puts("=> #{message}")
end 

loop do
  prompt("Welcome to the loan calculator. We will need a few details.")


prompt("1. Please enter the loan amount")

loan_amount = ''
loop do 
  loan_amount = Kernel.gets.chomp.to_f

  if loan_amount < 0
    prompt("Please enter a positive number")
  else
    break 
  end 
end 


Kernel.puts("2. Please enter the Annual Percentage Rate (APR)")

annual_percentage_rate = ''

loop do 
  annual_percentage_rate = Kernel.gets.chomp.to_f

  if annual_percentage_rate < 0
    prompt("Please enter a positive number")
  else
    break 
  end 
end 



Kernel.puts("3. Please enter the loan duration in months")

loan_duration = ''

loop do 
  loan_duration = Kernel.gets.chomp.to_f

  if loan_duration < 0
    prompt("Please enter a positive number")
  else
    break 
  end 
end 

monthly_interest_rate = (annual_percentage_rate / 100.0) / 12

monthly_payment = calculate_monthly_payments(loan_amount, monthly_interest_rate, loan_duration)

formatted_monthly_payment = format('%.2f', monthly_payment)

Kernel.puts("Your monthly payment will be $#{formatted_monthly_payment} per month")

end 