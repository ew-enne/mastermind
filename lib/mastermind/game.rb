# require_relative 'board'

class Game
  # defines the logic of the game

  # attr_reader :board

  def initialize
    @board = Board.new
    @code_maker_code = []
    @guess =[]
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
    @board.print_holes(['bl', 'bl', 'bl', 'bl'])
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
    @player = Player.new
  end

  def select_randomly
    @board.holes_colors = Array.new(4) { @board.dot_colors.sample }
  end

  def give_feedback
    feedback = []
    code_maker_check = @code_maker_code
    # check if right place and right color
    @guess.each_with_index do |color, index|
      if code_maker_check[index] == color
        @guess[index] = 'O' # element won't give false positive in second round
        code_maker_check[index] = 'X'
        feedback << 'X'
      end
    end
    # check if wrong place and right color
    @guess.each do |col|
      code_maker_check.each_with_index do |color, index|
        if color == col
          code_maker_check[index] = 'x'
          feedback << 'x'
          break
        end
      end
    end

    feedback.each do |peg|
      if peg == 'X'
        @board.print_peg('bl')
      elsif peg == 'x'
        @board.print_peg('w')
      end
    end
    puts
    # puts "Check feedback #{feedback}" # for debugging
  end

  def play
    round = 0
    @code_maker_code = select_randomly
    puts "This is the random code: #{@code_maker_code}"
    if round == 0
      print "Hi #{@player.name}, the computer has chosen a random combination of pegs. Please enter your first guess (use 4 of the above mentionned letters for colors): "
      round += 1
    else
      puts "Enter your next guess: "    
    end
      @guess = gets.chomp.chars
      print "\nYour guess: "
      "#{@board.print_holes(@guess)}"
      
      print "\nResult: "
      "#{give_feedback}"

  end

end