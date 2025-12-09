require_relative 'lib/mastermind'

game = Game.new
game.select_randomly
game.board.print_holes