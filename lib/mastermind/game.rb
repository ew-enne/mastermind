class Game
  # defines the logic of the game

  attr_reader :board

  def initialize
    @board = Board.new
    presentation
    create_player
  end
  
  # presentation of the game
  def presentation
    puts
    puts '---- M A S T E R M I N D ----'
    puts
    puts 'The bord has 4 empty holes: '
    puts
    @board.print_holes
    puts 'You choose 4 pegs to put into these holes.'
    puts
    puts 'There are six colors of pegs available :'
    puts
    puts "#{Piece.new('b').colored_dot} : for blue, enter b"
    puts "#{Piece.new('y').colored_dot} : for yellow, enter y"
    puts "#{Piece.new('w').colored_dot} : for white, enter w"
    puts "#{Piece.new('r').colored_dot} : for red, enter r"
    puts "#{Piece.new('m').colored_dot} : for magenta, enter m"
    puts "#{Piece.new('g').colored_dot} : for green, enter g"
    puts
    print 'The result of your choice will be evaluated with black and white pegs: '
    print "#{Piece.new('w').colored_peg} "
    puts "#{Piece.new('bl').colored_peg}"
    puts
    puts "---- Now, let's play! -------"    
  end

  def create_player
    Player.new 
  end

  def select_randomly
    @board.holes_colors.map! { @board.dot_colors.sample }
    p @board.holes_colors
    @board.holes_colors
  end

end