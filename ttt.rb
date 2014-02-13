
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


	def winner
		if 	@grid[0][0] == "X" && @grid[0][1] == "X" && @grid[0][2] == "X"
			puts "You Win!"
		elsif
			@grid[1][0] == "X" && @grid[1][1] == "X" && @grid[1][2] == "X"
			puts "You Win!"
		elsif 
			@grid[2][0] == "X" && @grid[2][1] == "X" && @grid[2][2] == "X"
			puts "You Win!"
		elsif 
			@grid[0][0] == "X" && @grid[1][1] == "X" && @grid[2][2] == "X"
			puts "You Win!"	


		elsif 
			@grid[0][0] == "X" && @grid[1][0] == "X" && @grid[2][0] == "X"
			puts "You Win!"	
		elsif 
			@grid[0][1] == "X" && @grid[1][1] == "X" && @grid[2][1] == "X"
			puts "You Win!"	
		elsif 
			@grid[0][2] == "X" && @grid[1][2] == "X" && @grid[2][2] == "X"
			puts "You Win!"	
		elsif
			@grid[0][2] == "X" && @grid[1][1] == "X" && @grid[2][0] == "X"
			puts "You Win!"





		elsif
			@grid[1][0] == "O" && @grid[1][1] == "O" && @grid[1][2] == "O"
			puts "You Win!"
		elsif 
			@grid[2][0] == "O" && @grid[2][1] == "O" && @grid[2][2] == "O"
			puts "You Win!"
		elsif 
			@grid[0][0] == "O" && @grid[1][1] == "O" && @grid[2][2] == "O"
			puts "You Win!"	

		elsif 
			@grid[0][0] == "O" && @grid[0][1] == "O" && @grid[0][2] == "O"
			puts "You Win!"	

		elsif 
			@grid[0][0] == "O" && @grid[1][0] == "O" && @grid[2][0] == "O"
			puts "You Win!"	
		elsif 
			@grid[0][1] == "O" && @grid[1][1] == "O" && @grid[2][1] == "O"
			puts "You Win!"	
		elsif
			@grid[0][2] == "O" && @grid[1][2] == "O" && @grid[2][2] == "O"
			puts "You Win!"
		else 
			@grid[0][2] == "O" && @grid[1][1] == "O" && @grid[2][0] == "O"
			puts "You Win!"
		end
	end


end
 
class Player
	attr_accessor :name
	
	def to_s
		"unknown player type"
	end
 
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

		game_loop

	end

	
 
	def game_loop


		while @game_in_progress do
			puts "#{@player1.name} make a move ([0-2],[0-2]):"
			input = gets.chomp
			x = input.split(",")[0].to_i
			y = input.split(",")[1].to_i
			@board.insert(x,y, "X")
			@board.show
			@board.winner
			
			puts "#{@player2.name} make a move ([0-2],[0-2]):"
			input = gets.chomp
			x = input.split(",")[0].to_i
			y = input.split(",")[1].to_i
			@board.insert(x,y, "O")
			@board.show
			@board.winner 
				
		end



end
end