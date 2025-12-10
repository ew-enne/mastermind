class Player
  # defines players (general for all types of players)
  
  attr_reader :name

  def initialize
    puts
    print "Enter your name: "
    @name = gets.chomp
    puts
  end

end