require "byebug"
module Slideable

    def moves
        row, col = pos
       grow_unblocked_moves_in_dir(row, col, moves_dirs)
    end

    
    def horizontal_dirs
        HORIZONTAL_DIRS
    end
    
    def diagonal_dirs
        DIAGONAL_DIRS
    end
    
    private
    
    HORIZONTAL_DIRS = [
        [1, 0],
        [-1, 0],
        [0, 1],
        [0,-1]
    ]
    
    DIAGONAL_DIRS = [
        [-1, -1],
        [-1, 1],
        [1, -1],
        [1, 1]
    ]

    def moves_dirs
        arr = []
        arr.concat(horizontal_dirs)
        arr.concat(diagonal_dirs)
        ar
    end

    def grow_unblocked_moves_in_dir(dx, dy, dirs)
        new_moves = []

        dirs.each do |sub|
            
            new_row = dx
            new_col = dy

            x, y = sub 

            while (new_row > 0 && new_row < 7) && (new_col > 0 && new_col < 7)
                new_row += x
                new_col += y
                new_moves << [new_row, new_col]
            end
            
        end
        new_moves
    end
end

module Stepable
  def moves
  end
  
  def move_diffs
    [[0, 1], [1, 0], [-1, 0], [0, -1]]

  end

end