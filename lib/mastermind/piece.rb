
class Piece
  # defines the pieces: dots and pegs with colors
    
  attr_reader :color_code
  
  COLOR_MAP = {
    'b' => 'blue',
    'y' => 'yellow',
    'w' => 'white',
    'r' => 'red',
    'm' => 'magenta',
    'g' => 'green',
    'bl' => 'black'
  }.freeze

  def initialize(color_code = nil)
    @dot = "\u25C9"
    @peg = "\u2759"
    color_key = color_code&.downcase
    @color = COLOR_MAP[color_key] || COLOR_MAP['bl'] # fallback to black
  end

  def colored_dot
    @dot.colorize(@color.to_sym)
  end

  def colored_peg
    @peg.colorize(@color.to_sym)
  end

end