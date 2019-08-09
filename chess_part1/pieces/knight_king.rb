require_relative "piece.rb"

class King < Piece
  include Stepable

  def symbol

  end

  protected

end

class Knight < Piece

  def symbol
  end

  protected
  def move_diffs
    MOVE_DIFFS
  end
  
  private
  MOVE_DIFFS =[[-2, 1],
  [-2, -1],
  [-1, -2],
  [-1, 2],
  [1, 2],
  [1, -2],
  [2, 1],
  [2, -1]]
end