require_relative 'board.rb'
require 'colorize'

class Display

  def initialize(board)
    @board = board
    @bg_color = "R"
    render
  end

  def render
    system('clear')
    board.each do |row|

      row.each do |col|
          
      end
    end
  end

  def s_color
    @bg_color == "R"? @bg_color = "U": @bg_color = "R"
  end

end
