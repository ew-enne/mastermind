module Check
  # helper methods to check if move is a win or how to evaluate the move
  
  class Board
  # defines the board
  
  class Peg 
  # defines the pegs
  
  class Player
  # defines players (general for all types of players)
  
  class CodeMaker < Player
  # defines the code maker
  
  class AICodeMaker < CodeMaker
  # defines AI specific codemaker aspects
  
  class HumanCodeMaker < CodeMaker
  # defines human specific codemaker aspects
  
  class CodeBreaker < Player
  # defines the code breaker
  
  class AICodeBreaker < CodeBreaker
  # defines AI specific codebraker aspects
  
  class HumanCodeBreaker < CodeBreaker
  # defines human specific codebreaker aspects
  
  class Rules
  # defines the rules of the game
  
  class Game
  # defines the logic of the game