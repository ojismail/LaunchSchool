puts "Hello please enter two numbers"

number_1 = gets.chomp.to_f

number_2 = gets.chomp.to_f

puts "Would you like to add, subtract, multiply or divide?"

operation = gets.chomp 

if operation == "add"
    result = number_1 + number_2
elsif operation == "subtract"
    result = number_1 - number_2
elsif operation == "multiply"
    result = number_1 * number_2
elsif operation == "divide"
    if number_2 == 0
        puts "Cannot divide by 0"
    else 
        result = number_1 / number_2
    end 
else
    "Invalid" 
end 

puts "Congrats here is your #{result}" 

