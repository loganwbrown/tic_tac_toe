class Board
	def initialize

		@grid = [[nil, nil, nil], [nil, nil, nil],[nil, nil, nil]]
	end

	def show	
		puts ("#{@grid[0][0]}|#{@grid[0][1]}|#{@grid[0][2]}")
		puts "---------"
		puts ("#{@grid[1][0]}|#{@grid[1][1]}|#{@grid[1][2]}")
		puts "---------"
		puts ("#{@grid[2][0]}|#{@grid[2][1]}|#{@grid[2][2]}")
	end

end

class Game

	def initialize
		player1 = PlayerX.new
		player2 = PlayerO.new

		@board = Board.new

		puts "Player 1, what is your name?"
		apple = gets.chomp

		puts "Player 2, what is your name?"
		pear = gets.chomp

		player1.name = apple
		player2.name = pear

		puts "Your names are #{player1.name} and #{player2.name}"

		@game_in_progress = true

		game_loop



		#turn = [PlayerX, PlayerO]
		#turn_counter = 0
		#turn_counter = turn_counter + 1
		#if turncounter % == 1
		#	turn = PlayerX
		#else
		#	turn = PlayerO
		#end
	end

	def game_loop
		while @game_in_progress do
			#ask the current player for input

			#update the game based on the input

			#update the current player
		end
		end

			
	end

end


class Player
	attr_accessor :name

	def to_s(name)
		
	end

	#def name 
#		@name
#	end
	
#	def name=(value)
#		puts "I am here"
#		@name = value
#	end	

end

class PlayerX < Player
end

class PlayerO < Player
end

