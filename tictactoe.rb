spaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
win = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"], ["1", "4", "7"], ["2", "5", "8"], ["3", "6", "9"], ["1", "5", "9"], ["3", "5", "7"]]
playerx = "X"
playero = "O"

def welcome
  puts "Welcome to Tic-Tac-Toe"
  puts ""
end

def userx_input(spaces, playerx)
  print "Player X: Please input a number from 1 through 9: "
  input = gets.chomp
  if input == "1"
    spaces.map! { |x| x == "1" ? playerx : x }
  end
  if input == "2"
    spaces.map! { |x| x == "2" ? playerx : x }
  end
  if input == "3"
    spaces.map! { |x| x == "3" ? playerx : x }
  end
  if input == "4"
    spaces.map! { |x| x == "4" ? playerx : x }
  end
  if input == "5"
    spaces.map! { |x| x == "5" ? playerx : x }
  end
  if input == "6"
    spaces.map! { |x| x == "6" ? playerx : x }
  end
  if input == "7"
    spaces.map! { |x| x == "7" ? playerx : x }
  end
  if input == "8"
    spaces.map! { |x| x == "8" ? playerx : x }
  end
  if input == "9"
    spaces.map! { |x| x == "9" ? playerx : x }
  end
end

def usero_input (spaces, playero)
  print "Player O: Please input a number from 1 through 9: "
  input = gets.chomp
  if input == "1"
    spaces.map! { |x| x == "1" ? playero : x }
  end
  if input == "2"
    spaces.map! { |x| x == "2" ? playero : x }
  end
  if input == "3"
    spaces.map! { |x| x == "3" ? playero : x }
  end
  if input == "4"
    spaces.map! { |x| x == "4" ? playero : x }
  end
  if input == "5"
    spaces.map! { |x| x == "5" ? playero : x }
  end
  if input == "6"
    spaces.map! { |x| x == "6" ? playero : x }
  end
  if input == "7"
    spaces.map! { |x| x == "7" ? playero : x }
  end
  if input == "8"
    spaces.map! { |x| x == "8" ? playero : x }
  end
  if input == "9"
    spaces.map! { |x| x == "9" ? playero : x }
  end
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
  puts
end

def game_over(spaces)
  if spaces[0..2] == ["X", "X", "X"]
    puts "X wins"
  end
  if spaces[3..5] == ["X", "X", "X"]
    puts "X wins"
  end
  if spaces[6..8] == ["X", "X", "X"]
    puts "X wins"
  end
  if spaces[6] + spaces[3] + spaces[0] == ["X, X, X"]
    puts "X wins"
  end
  if spaces[7] + spaces[4] + spaces[1] == ["X, X, X"]
    puts "X wins"
  end
  if spaces[8] + spaces[5] + spaces[2] == ["X, X, X"]
    puts "X wins"
  end
  if spaces[8] + spaces[4] + spaces[0] == ["X, X, X"]
    puts "X wins"
  end
  if spaces[6] + spaces[4] + spaces[2] == ["X, X, X"]
    puts "X wins"
  end
  if spaces[0..2] == ["O", "O", "O"]
    puts "O wins"
  end
  if spaces[3..5] == ["O", "O", "O"]
    puts "O wins"
  end
  if spaces[6..8] == ["O", "O", "O"]
    puts "O wins"
  end
  if spaces[6] + spaces[3] + spaces[0] == ["O, O, O"]
    puts "O wins"
  end
  if spaces[7] + spaces[4] + spaces[1] == ["O, O, O"]
    puts "O wins"
  end
  if spaces[8] + spaces[5] + spaces[2] == ["O, O, O"]
    puts "O wins"
  end
  if spaces[8] + spaces[4] + spaces[0] == ["O, O, O"]
    puts "O wins"
  end
  if spaces[6] + spaces[4] + spaces[2] == ["O, O, O"]
    puts "O wins"
  end
end

def tictactoe(spaces, playerx, playero)
  until game_over(spaces) do
  display(spaces)
  userx_input(spaces, playerx)
  display(spaces)
  if game_over(spaces)
    puts "X Wins"
  else
    usero_input(spaces, playero)
    if game_over(spaces)
      puts "O wins"
    end
    display(spaces)
  end
  if game_over(spaces) == true
    break
  end
end
end



tictactoe(spaces, playerx, playero)
=begin
while true
  puts "Play again?  Enter y for yes and n for no"
  play_again = gets.chomp.downcase
  if (play_again == "y")
    tictactoe
  else
    break
  end
end
=end
