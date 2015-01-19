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
def inputx(spaces)
  print "Player X: Please input a number from 1 through 9: "
  input = gets.chomp
  if input== "1"
    spaces.map! { |x| x == "1" ? @playerx : x }
  end
  if input == "2"
    spaces.map! { |x| x == "2" ? @playerx : x }
  end
  if input == "3"
    spaces.map! { |x| x == "3" ? @playerx : x }
  end
  if input == "4"
    spaces.map! { |x| x == "4" ? @playerx : x }
  end
  if input == "5"
    spaces.map! { |x| x == "5" ? @playerx : x }
  end
  if input == "6"
    spaces.map! { |x| x == "6" ? @playerx : x }
  end
  if input == "7"
    spaces.map! { |x| x == "7" ? @playerx : x }
  end
  if input == "8"
    spaces.map! { |x| x == "8" ? @playerx : x }
  end
  if input == "9"
    spaces.map! { |x| x == "9" ? @playerx : x }
  end
end

def inputo (spaces)
  print "Player O: Please input a number from 1 through 9: "
  input = gets.chomp
  if input == "1"
    spaces.map! { |x| x == "1" ? @playero : x }
  end
  if input == "2"
    spaces.map! { |x| x == "2" ? @playero : x }
  end
  if input == "3"
    spaces.map! { |x| x == "3" ? @playero : x }
  end
  if input == "4"
    spaces.map! { |x| x == "4" ? @playero : x }
  end
  if input == "5"
    spaces.map! { |x| x == "5" ? @playero : x }
  end
  if input == "6"
    spaces.map! { |x| x == "6" ? @playero : x }
  end
  if input == "7"
    spaces.map! { |x| x == "7" ? @playero : x }
  end
  if input == "8"
    spaces.map! { |x| x == "8" ? @playero : x }
  end
  if input == "9"
    spaces.map! { |x| x == "9" ? @playero : x }
  end
end
end

class Comp
  def initialize
  @comp = "O"
  end
def choose (spaces)
 input = spaces.sample.to_s
 if input == "1"
   spaces.map! { |x| x == "1" ? @comp : x }
 end
 if input == "2"
   spaces.map! { |x| x == "2" ? @comp : x }
 end
 if input == "3"
   spaces.map! { |x| x == "3" ? @comp : x }
 end
 if input == "4"
   spaces.map! { |x| x == "4" ? @comp : x }
 end
 if input == "5"
   spaces.map! { |x| x == "5" ? @comp : x }
 end
 if input == "6"
   spaces.map! { |x| x == "6" ? @comp : x }
 end
 if input == "7"
   spaces.map! { |x| x == "7" ? @comp : x }
 end
 if input == "8"
   spaces.map! { |x| x == "8" ? @comp : x }
 end
 if input == "9"
   spaces.map! { |x| x == "9" ? @comp : x }
 end
end
end

class Game
  def initialize(tictactoep2p, tictactoecomp)
    @tictactoep2p = tictactoep2p
    @tictactoecomp = tictactoecomp
  end

def display(spaces)
  system "clear"
  spaces.each_index do |x|
    if (x == 2) || (x == 5)
      print " [#{spaces[x]}]\n"
      else
      print " [#{spaces[x]}]"
      end
  end
end

def win?(spaces)
  WIN.any? do |a, b, c|
  if spaces[a] == spaces[b] && spaces[b] == spaces[c]
  return spaces[a]
end
end
end


def @tictactoep2p(spaces)
  turn_count = 1
  until win?(spaces) || turn_count == 10 do
    display(spaces)
    Player.inputx(spaces)
    turn_count += 1
    display(spaces)
    if win?(spaces)
      puts "X Wins"
    elsif
      turn_count == 10
      puts "It's a draw!"
    else
      Player.inputo(spaces)
      turn_count +=1
      if win?(spaces)
        puts "O wins"
      end
    end
    if win?(spaces) == true
      break
    end
  end
end

def @tictactoecomp(spaces)
  turn_count = 1
  until win?(spaces) || turn_count == 10 do
    display(spaces)
    Player.inputx(spaces)
    turn_count += 1
    display(spaces)
    if win?(spaces)
      puts "X Wins"
    elsif
      turn_count == 10
      puts "It's a draw!"
    else
      Comp.choose(spaces)
      turn_count +=1
      if win?(spaces)
        puts "O wins"
      end
    end
    if win?(spaces) == true
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


player_choose(spaces)
