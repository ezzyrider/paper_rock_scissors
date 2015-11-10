
# give all possible responses
CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

puts "Welcome to paper, rock, scissors"

#bank of winning messages
#bank of winning message
def display_winning_message(winning_choice)
	case winning_choice
	when'p'
		puts "Paper covers Rock"
	when 'r'
		puts "Rock smashes Scissors"
	when 's'
		puts "Scissors cuts paper"
	end
end

loop do
	# player makes a pick
	begin
	puts "Pick one: (p,r,s):"
	player_choice = gets.chomp.downcase
	end until CHOICES.keys.include?(player_choice)

	#computer picks
	computer_choice = CHOICES.keys.sample

#compare player choice to computer choice
	if player_choice == computer_choice
		puts "it's a tie!"
	elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 
		's') || (player_choice == 's' && computer_choice == 'p')
			display_winning_message(player_choice)
			puts "You won!"
		else
			display_winning_message(computer_choice)
			puts "computer won!"
		end

#give option to play again
		puts "Play again? (y/n)"
		break if gets.chomp.downcase != 'y'


end

puts "Good game"

