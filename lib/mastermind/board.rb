class Board
# defines the board

require_relative 'piece'

  def initialize
    # @colors = [b, y, w, r, m, g]
    # @holes = []
  end

  # presentation of the board and the available colors
  def presentation()

    dot = Piece.new('r')
    puts dot.colored_dot

    # peg = Piece.new('w')
    puts Piece.new('w').colored_peg


    puts
    puts '---- M A S T E R M I N D ----'
    puts
    puts 'Bord with 4 empty holes: '
    4.times {print "#{Piece.new('bl').colored_dot} "}
    puts "\n\n"
    puts 'Available colors:'
    puts
    puts "#{Piece.new('b').colored_dot} : for blue, enter b"
    puts "#{Piece.new('y').colored_dot} : for yellow, enter y"
    puts "#{Piece.new('w').colored_dot} : for white, enter w"
    puts "#{Piece.new('r').colored_dot} : for red, enter r"
    puts "#{Piece.new('m').colored_dot} : for magenta, enter m"
    puts "#{Piece.new('g').colored_dot} : for green, enter g"
    puts
    print 'Black and white pegs: '
    print "#{Piece.new('w').colored_peg} "
    puts "#{Piece.new('bl').colored_peg}"
    puts
    puts "Now it's your turn..."
    
  end



end