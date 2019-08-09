require_relative "piece.rb"
require_relative "nullpiece.rb"


class Board

    attr_reader :board, :piece
  def initialize
    @board = Array.new(8) { Array.new(8) }
    @sentinel = NullPiece.instance

    (0...@board.length).each do |row|
      (0...@board.length).each do |column|
        if row == 0 
          starting_positions(:white, row) 
        elsif row == 7
          starting_positions(:black, row) 
        elsif row == 1 || row == 6
          @board[row][column] = Pawn.new([row, column])
        else
          @board[row][column] = sentinel
        end
      end
    end
  end

  def starting_positions(color, row)
    col = 0
    while col <= 7 
      if col == 0 || col  == 7
        @board[row][column] = Rook.new([row, col])
      elsif col == 1 || col == 6
        @board[row][column] = Knight.new([row, col])
      elsif col == 2 || col == 5
        @board[row][column] = Bishop.new([row, col])
      elsif col == 3 
        @board[row][column] = King.new([row,col])
      elsif col == 4
        @board[row][column] = Queen.new([row, col])
      end
    end
  end

  def [](position)
    row, col = position
    @board[row][col]
  end

  def []=(position, value)
    row, col = position
    @board[row][col] = value
  end

  def valid_pos?(position)

  end

  def move_piece(start_pos, end_pos) #move_piece should have color arg later
    if self[start_pos].pos == sentinel
      raise "There is no piece here"
    end
    if self[end_pos] != sentinel
      raise "There is already a piece here"
    end
    piece = self[start_pos]
    piece.pos = end_pos
    self[end_pos] = piece
    self[start_pos] = sentinel

  end
  
  def add_piece(piece, pos)
  end


  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end


  def inspect
    @board
  end

  private
  attr_reader :sentinel
end

#  p b = Board.new
#  print b.board[0][0]