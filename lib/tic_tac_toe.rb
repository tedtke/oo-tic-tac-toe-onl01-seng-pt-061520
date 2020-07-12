class TicTacToe
    WIN_COMBINATIONS = [
         [0,1,2], # Top row
         [3,4,5],
         [6,7,8],
         [0,3,6],
         [1,4,7],
         [2,5,8],
         [0,4,8],
         [6,4,2]  # Middle row
        ]
    def initialize(board = nil)
        @board = Array.new(9, " ")
    end

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
      end

    def input_to_index(usermove)
        usermove.to_i - 1
        #ruby to_i stands for to integer. It is a method that can be applied to strings, floats and integers.
    end

    def move(index, token)
        # index = self.input_to_index
        # token = "X" || "O"
        @board[index] = token
    end

   def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
    # exclamation point returned it false otherwise true
    # checks index values of move because it is after input_to_index
   end
end