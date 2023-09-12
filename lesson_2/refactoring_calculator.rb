def prompt(message)
    Kernel.puts("=> #{message}")
end 

def valid_number?(num)
    num.to_i() != 0
end 

def operation_to_message(op)
    case op
    when '1'
        'Adding'
    when '2'
        'Subtracting'
    when '3'
        'Multiplying'
    when '4'
        'Dividing'
    end 
end 

prompt("Welcome to Calulator! Enter your name:")

name = ''
loop do 
    name = Kernel.gets().chomp()

    if name.empty?()
        prompt("Error")
    else
        break
    end 
end 


loop do 

    number_1 = ''
    number_2 = ''

    loop do 
        prompt("Hello please enter your first number")
        number_1 = gets.chomp.to_f
        if valid_number?(number_1)
            break
        else
            prompt("Oops. Please enter a valid number")
        end 
    end 


    loop do 
        prompt("Hello please enter your second number")
        number_2 = gets.chomp.to_f
        if valid_number?(number_2)
            break
        else
            prompt("Oops. Please enter a valid number")
        end 
    end 


    operation_prompt = <<-MSG
        What would you like to do?
            1) Add
            2) Subtract
            3) Multiply
            4) Divide
    MSG

    prompt(operation_prompt)



    operation = ''

    loop do 
        operation = Kernel.gets().chomp() 

        if %w(1 2 3 4).include?(operation)
            break 
        else
            prompt("Must choose 1, 2, 3 or 4")
        end
    end 


    prompt("#{operation_to_message(operation)} the two numbers...")


    result = case operation
            when '1'
            result = number_1 + number_2
            when '2'
            result = number_1 - number_2
            when '3'
            result = number_1 * number_2
            when '4'
                if number_2 == 0
                    puts "Cannot divide by 0"
                else 
                    result = number_1 / number_2
                end 
    end  

    prompt("Congrats here is your #{result}")

    prompt("Do you want to perform another action? (Y to calculate again)")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
end
prompt("Goodbye")