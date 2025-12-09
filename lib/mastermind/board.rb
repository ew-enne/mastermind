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

  # presentation of the board and the available colors
  # def presentation()
  #   puts
  #   puts '---- M A S T E R M I N D ----'
  #   puts
  #   puts 'Bord with 4 empty holes: '
  #   print_holes(@holes_colors)
  #   puts 'Available colors:'
  #   puts
  #   puts "#{Piece.new('b').colored_dot} : for blue, enter b"
  #   puts "#{Piece.new('y').colored_dot} : for yellow, enter y"
  #   puts "#{Piece.new('w').colored_dot} : for white, enter w"
  #   puts "#{Piece.new('r').colored_dot} : for red, enter r"
  #   puts "#{Piece.new('m').colored_dot} : for magenta, enter m"
  #   puts "#{Piece.new('g').colored_dot} : for green, enter g"
  #   puts
  #   print 'Black and white pegs: '
  #   print "#{Piece.new('w').colored_peg} "
  #   puts "#{Piece.new('bl').colored_peg}"
  #   puts
  #   puts "Now it's your turn..."    
  # end

  


end