VALID_CHOICES = %w(rock paper scissors spock lizard)

WINNING_COMBINATIONS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

CHOICE_SHORTHAND = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}

def prompt(message)
  Kernel.puts("=> #{message}")
end 

def display_results(player, computer)
  if WINNING_COMBINATIONS[player].include?(computer)
    prompt("You win")
    return "player"
  elsif WINNING_COMBINATIONS[computer].include?(player)
    prompt("Computer wins")
    return "computer"
  else
    prompt("It's a draw")
    return "draw"
  end 
end

player_score = 0
computer_score = 0

loop do 
choice = ''


loop do 
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  prompt("Shorthand: r = rock, p = paper, sc = scissors, sp = spock, l = lizard")
  choice = Kernel.gets().chomp()

  if CHOICE_SHORTHAND.key?(choice)
    choice = CHOICE_SHORTHAND[choice]
  end 
  
  if VALID_CHOICES.include?(choice)
    break 
  else 
    prompt("That's not a valid choice")
  end 
end

computer_choice = VALID_CHOICES.sample

prompt("You chose: #{choice}; Computer chose #{computer_choice}")

result = display_results(choice, computer_choice)

if result == "player"
  player_score += 1
elsif result == "computer"
  computer_score += 1
end

prompt("Your score: #{player_score}. Computer score: #{computer_score}.")

if player_score == 3
  prompt("Congratulations! You're the grand winner!")
  break
elsif computer_score == 3
  prompt("Sorry! The computer is the grand winner!")
  break
end

prompt("Do you want to play again?")
answer = Kernel.gets().chomp()
break unless answer.downcase().start_with?('y')
end

prompt("Thanks for playing")
