VALID_CHOICES = %w(rock paper scissors spock lizard)

WINNING_COMBINATIONS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end 

def display_results(player, computer)
  if WINNING_COMBINATIONS[player].include?(computer)
    prompt("You win")
  elsif WINNING_COMBINATIONS[computer].include?(player)
    prompt("Computer wins")
  else
    prompt("It's a draw")
  end 
end

loop do 
choice = ''

loop do 
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = Kernel.gets().chomp()

  if VALID_CHOICES.include?(choice)
    break 
  else 
    prompt("That's not a valid choice")
  end 
end

computer_choice = VALID_CHOICES.sample

prompt("You chose: #{choice}; Computer chose #{computer_choice}")

display_results(choice, computer_choice)

prompt("Do you want to play again?")
answer = Kernel.gets().chomp()
break unless answer.downcase().start_with?('y')
end

prompt("Thanks for playing")
