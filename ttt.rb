class Board
 
	def initialize
		@grid = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
	end
 
	def show
		puts "	#{@grid[0][0]}	|	#{@grid[0][1]}	|	#{@grid[0][2]}"
		puts "-------------------------------------------"
		puts "	#{@grid[1][0]}	|	#{@grid[1][1]}	|	#{@grid[1][2]}"
		puts "-------------------------------------------"
		puts "	#{@grid[2][0]}	|	#{@grid[2][1]}	|	#{@grid[2][2]}"
	end
 
	def insert(x,y,value)
		@grid[x][y] = value
	end	

	def take
		return 	@grid[0][0] && @grid[0][1] && @grid[0][2] ||
				@grid[1][0] && @grid[1][1] && @grid[1][2] ||
				@grid[2][0] && @grid[2][1] && @grid[2][2] ||
				@grid[0][0] && @grid[1][1] && @grid[2][2] ||
				@grid[0][0] && @grid[1][0] && @grid[2][0] ||
				@grid[0][1] && @grid[1][1] && @grid[2][1] ||
				@grid[0][2] && @grid[1][2] && @grid[2][2] ||
				@grid[0][2] && @grid[1][1] && @grid[2][0] 
	end
 
end
 
class Player
	attr_accessor :name
	
	def to_s
		"unknown player type"
	end
 
	# not needed as we are using 
	# attr_accessor :name
	#def name
	#	@name
	#end
	#
	#def name=(value)
	#	@name = value
	#end	
end
 
class PlayerX < Player
	def to_s
		"X"
	end
end
 
class PlayerO < Player
	def to_s
		"O"
	end
end	
 
 
class Game
	def initialize
		@player1 = PlayerO.new
		@player2 = PlayerX.new
 
		@board = Board.new
 
		puts "Player 1, what is your name?"
		apple = gets.chomp

		puts "Player 2, what is your name?"
		pear = gets.chomp

		@player1.name = apple
		@player2.name = pear

		@game_in_progress = true
 
		def winning
			if [0][0] != nil
				@game_in_progress = false
			else
				@game_in_progress = true
			end

		end


		game_loop

	end
 
	def game_loop
		while @game_in_progress do
			#ask the current player for input
			#To ask for input we use gets which returns a string
			puts "#{@player1.name} make a move ([0-2],[0-2]):"
			input = gets.chomp
			x = input.split(",")[0].to_i
			y = input.split(",")[1].to_i
			@board.insert(x,y, "X")
			@board.show
			if @board.take == "X"
				puts "#{@player1.name}, you won!"
			end	
 
			puts "#{@player2.name} make a move ([0-2],[0-2]):"
			input = gets.chomp
			x = input.split(",")[0].to_i
			y = input.split(",")[1].to_i
			@board.insert(x,y, "O")
			@board.show
			if @board.take == "O"
				puts "#{@player2.name}, you won!"
			end	
 	
 			

			#update the game based on the input
			#update the current player		
		end	
	end

	def ways_to_win
		
	end


end	

