require_relative 'pieces.rb'

class Board
attr_accessor :grid

  def initialize(grid,)
    @grid = set_board
  end

  def set_board
    g = Array.new(8) {Array.new(8)}
    g.each_with_index |row, r_idx|
      row.each_with_index |col, c_idx|
        if row == 0 ||row == 7
          if col == 0 || col == 7
            g[r_idx][c_idx] = Rook.new
            switch_color
          elsif col == 1 ||col == 6
            g[r_idx][c_idx] = Knight.new
            switch_color
          elsif col == 2 || col == 5
            g[r_idx][c_idx] = Bishop.new
            switch_color
          elsif col == 3
            g[r_idx][c_idx] = Queen.new
            switch_color
          else
            g[r_idx][c_idx] = King.new
            switch_color
        elsif row == 1 ||row == 6
          g[r_idx][c_idx] = Pawn.new
          switch_color
        else
          g[r_idx][c_idx] = EmptySquare.new
        end
      end
    end
    g
  end

  def switch_color
    if row == 0 || row == 1
      piece.color = "Black"
    else
      piece.color = "White"
    end
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def []=(pos, value)
    x, y = pos
    rows[x][y] = value
  end

  def move_pieces(start_pos, end_pos)
    grid[end_pos] = grid[start_pos]
    grid[start_pos] = EmptySquare.new
  end

  def valid_move?
  end

  def check?

  end

  def check_mate?

  end

  def deep_dup

  end

end
