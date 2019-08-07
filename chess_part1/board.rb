require_relative "piece.rb"
require_relative "nullpiece.rb"


class Board

    attr_reader :board
  def initialize
    @board = Array.new(8) { Array.new(8) }
    @sentinel = NullPiece.instance

    (0...@board.length).each do |row|
      (0...@board.length).each do |column|
        if row <= 1 
          @board[row][column] = Piece.new([row, column]) 
        elsif  row >= 6
          @board[row][column] = Piece.new([row, column]) 
        else
          @board[row][column] = sentinel
        end
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
    if @board[start_pos].value == sentinel
      raise "There is no piece here"
    end
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

 p b = Board.new
 print b.board[0][0]