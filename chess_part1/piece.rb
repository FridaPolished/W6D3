


class Piece
  include Slideable


  attr_reader :pos
  def initialize(color, board, pos)
    @color = color
    @pos = pos
    @board = board
  end

  

  def to_s
  end

  def empty?
  end

  def valid_moves

  end

  def pos=(val)
    @pos = val
  end

  def symbol
  end

  def move_into_check?(end_pos)
  end

end