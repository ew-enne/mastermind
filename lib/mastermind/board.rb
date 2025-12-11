# require_relative 'piece'

class Board
# defines the board

DOT_COLORS = ['b', 'y', 'w', 'r', 'm', 'g']

attr_reader :dot_colors, :holes_colors, :peg_color
attr_writer :holes_colors

  def initialize
    @dot_colors = DOT_COLORS
    @holes_colors = []
    @peg_color = ''
  end

  def print_holes(holes_colors)
    holes_colors.each { |hole| 
      print "#{Piece.new(hole).colored_dot} "
    }
  end

  def print_peg(peg_color)
    print "#{Piece.new(peg_color).colored_peg} "    
  end

end