class Game
  # defines the logic of the game

  attr_reader :board

  def initialize
    @board = Board.new
  end
  
  def select_randomly
    @board.holes_colors.map! { @board.dot_colors.sample }
    p @board.holes_colors
    @board.holes_colors
  end

end