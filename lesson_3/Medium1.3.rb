def factors(number)
  divisor = number
  factors = []
  if number > 0
  begin
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end 
  end until divisor == 0
  factors
end

