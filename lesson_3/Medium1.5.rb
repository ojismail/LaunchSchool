

def fib(limit, first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

limit = 15
result = fib(limit, 0, 1)
puts "result is #{result}"