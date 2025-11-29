class Board
# defines the board

require_relative 'piece'

  def initialize
    
  end


  # Presentation of the board and the available colors
  def presentation()

    p1 = Piece.new

    puts
    puts '---- M A S T E R M I N D ----'
    puts
    puts 'Bord with 4 empty holes: '
    4.times {print "#{p1.colored_dot(:black)} "}
    puts "\n\n"
    puts 'Available colors: '
    print "#{p1.colored_dot(:blue)} "
    print "#{p1.colored_dot(:yellow)} "
    print "#{p1.colored_dot(:white)} "
    print "#{p1.colored_dot(:red)} "
    print "#{p1.colored_dot(:magenta)} "
    puts "#{p1.colored_dot(:green)}"
    puts
    puts ' Black and white pegs: '
    print "#{p1.colored_peg(:white)} "
    puts "#{p1.colored_peg(:black)}"
    puts
    
  end

end