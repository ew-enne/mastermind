class Piece
  # defines the pieces: dots and pegs
    
  attr_reader :dot, :peg
  
  def initialize
    @dot = "\u25C9"
    @peg = "\u2759"
  end

  def colored_dot(color)
    dot.colorize(color)
  end

  def colored_peg(color)
    peg.colorize(color)
  end

end