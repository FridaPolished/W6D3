class Pawn < Piece


    def symbol
        :P
    end

    def move_dirs
        [forward_dir, 0]
    end

    private

    def start_row?
        (color == :white && pos[0] == 1 ) || (color == :black && pos[0] == 6)
    end

    def forward_dir
        if color == :white
            1
        else
            -1
        end
    end

    def forward_steps
        
    end

    def side_attacks
        row, col = pos
        attacks = []
        if self.color == :white 
            attacks =[[row+1, col+1], [row+1, col-1]]
        else
            attacks =[[row-1, col+1], [row-1, col-1]]
        end
        attacks
    end
end