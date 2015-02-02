spaces = ["1", "2", "3", "4", "5" , "6", "7", "8", "9"]
WIN = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
playerx = "X"
playero = "O"
comp = "O"

def welcome
  puts "Welcome to Tic-Tac-Toe"
  puts ""
end

class Player
  def initialize
    @playerx = "X"
    @playero = "O"
  end
def self.inputx(spaces)
  @playerx = "X"
  print "Player X: Please input a number from 1 through 9: "
  input = gets.chomp
  spaces[input.to_i - 1] = @playerx
end

def self.inputo (spaces)
  @playero = "O"
  print "Player O: Please input a number from 1 through 9: "
  input = gets.chomp
  spaces[input.to_i - 1] = @playero
end
end

class Comp
  def initialize
  @comp = "O"
  end
def self.choose (spaces)
 @comp = "O"
 input = spaces.sample.to_s
 spaces[input.to_i - 1] = @comp
end
end

class Game
  def initialize(tictactoep2p, tictactoecomp)
    @tictactoep2p = tictactoep2p
    @tictactoecomp = tictactoecomp
  end

def self.display(spaces)
  system "clear"
  spaces.each_index do |x|
    if (x == 2) || (x == 5)
      print " [#{spaces[x]}]\n"
      else
      print " [#{spaces[x]}]"
      end
  end
end

def self.win?(spaces)
  WIN.any? do |a, b, c|
    if spaces[a] == spaces[b] && spaces[b] == spaces[c]
  return spaces[a]
end
end
end


def self.tictactoep2p(spaces)
  turn_count = 1
  until Game.win?(spaces) || turn_count == 10 do
    Game.display(spaces)
    Player.inputx(spaces)
    turn_count += 1
    Game.display(spaces)
    if Game.win?(spaces)
      puts "X Wins"
    elsif
      turn_count == 10
      puts "It's a draw!"
    else
      Player.inputo(spaces)
      turn_count +=1
      if Game.win?(spaces)
        puts "O wins"
      end
    end
    if Game.win?(spaces) == true
      break
    end
  end
end

def self.tictactoecomp(spaces)
  turn_count = 1
  until Game.win?(spaces) || turn_count == 10 do
    display(spaces)
    Player.inputx(spaces)
    turn_count += 1
    display(spaces)
    if Game.win?(spaces)
      puts "X Wins"
    elsif
      turn_count == 10
      puts "It's a draw!"
    else
      Comp.choose(spaces)
      turn_count +=1
      if Game.win?(spaces)
        puts "O wins"
      end
    end
    if Game.win?(spaces) == true
      break
    end
  end
end
end

def player_choose(spaces)
  welcome
  puts "Please choose to play human(1) or computer(2):"
  input = gets.chomp
  if input == "1"
    Game.tictactoep2p(spaces)
  else
    Game.tictactoecomp(spaces)
  end
end

puts "Hi Friends"

player_choose(spaces)
