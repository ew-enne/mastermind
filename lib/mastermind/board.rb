require_relative 'piece'

class Board
# defines the board

DOT_COLORS = ['b', 'y', 'w', 'r', 'm', 'g']

attr_reader :dot_colors, :holes_colors
attr_writer :holes_colors

  def initialize
    @holes_colors = ['bl', 'bl', 'bl', 'bl']
    @dot_colors = DOT_COLORS
  end

  def print_holes
    @holes_colors.each { |hole| 
      print "#{Piece.new(hole).colored_dot} "
    }
    puts "\n\n"
  end

end