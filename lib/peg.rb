class Peg 
  # defines the pegs
  
  def initialize
    dot = "\u25C9"
    peg = "\u2759"
    dot_blue = dot.encode('utf-8').colorize(:blue)
    dot_yellow = dot.encode('utf-8').colorize(:yellow)
    dot_white = dot.encode('utf-8').colorize(:white)
    dot_red = dot.encode('utf-8').colorize(:red)
    dot_magenta = dot.encode('utf-8').colorize(:magenta)
    dot_green = dot.encode('utf-8').colorize(:green)
    dot_empty = dot.encode('utf-8').colorize(:black)
    peg_black = peg.encode('utf-8').colorize(:black)
    peg_white = peg.encode('utf-8').colorize(:white)
    puts ''
    puts 'Voici les couleurs disponibles pour jouer :'
    4.times { print dot_empty + ' '}
    puts ''
    print "#{dot_blue} "
    print "#{dot_yellow} "
    print "#{dot_white} "
    print "#{dot_red} "
    print "#{dot_magenta} "
    puts "#{dot_green} "
    print "#{peg_white} "
    print "#{peg_white} "
    puts "#{peg_black} "
  end

  end