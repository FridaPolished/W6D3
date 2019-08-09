require_relative "chess_modules.rb"
require_relative "piece.rb"

class Bishop < Piece
 include Slideable

    def symbol
        
    end


    protected

    def moves_dirs
        diagonal_dirs
    end

end 

class Queen < Piece
    include Slideable

    def symbol
        
    end

end

class Rook < Piece
    include Slideable

    def symbol
    end


    protected
    

    def moves_dirs
        horizontal_dirs
    end

end