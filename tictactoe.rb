spaces = ["1", "2", "3", "4", "5" , "6", "7", "8", "9"]
WIN = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
playerx = "X"
playero = "O"
comp = "O"

def welcome
  puts "Welcome to Tic-Tac-Toe"
  puts ""
end

def userx_input(spaces, playerx)
  print "Player X: Please input a number from 1 through 9: "
  input = gets.chomp
  if input== "1"
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

def comp (spaces, comp)
 input = spaces.sample.to_s
 if input == "1"
   spaces.map! { |x| x == "1" ? comp : x }
 end
 if input == "2"
   spaces.map! { |x| x == "2" ? comp : x }
 end
 if input == "3"
   spaces.map! { |x| x == "3" ? comp : x }
 end
 if input == "4"
   spaces.map! { |x| x == "4" ? comp : x }
 end
 if input == "5"
   spaces.map! { |x| x == "5" ? comp : x }
 end
 if input == "6"
   spaces.map! { |x| x == "6" ? comp : x }
 end
 if input == "7"
   spaces.map! { |x| x == "7" ? comp : x }
 end
 if input == "8"
   spaces.map! { |x| x == "8" ? comp : x }
 end
 if input == "9"
   spaces.map! { |x| x == "9" ? comp : x }
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
end

def win?(spaces)
  WIN.any? do |a, b, c|
  if spaces[a] == spaces[b] && spaces[b] == spaces[c]
  return spaces[a]
end
end
end


def tictactoep2p(spaces, playerx, playero)
  turn_count = 1
  until win?(spaces) || turn_count == 10 do
    display(spaces)
    userx_input(spaces, playerx)
    turn_count += 1
    display(spaces)
    if win?(spaces)
      puts "X Wins"
    elsif
      turn_count == 10
      puts "It's a draw!"
    else
      usero_input(spaces, playero)
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

def tictactoecomp(spaces, playerx, comp)
  turn_count = 1
  until win?(spaces) || turn_count == 10 do
    display(spaces)
    userx_input(spaces, playerx)
    turn_count += 1
    display(spaces)
    if win?(spaces)
      puts "X Wins"
    elsif
      turn_count == 10
      puts "It's a draw!"
    else
      comp(spaces, comp)
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

def player_choose(spaces, playerx, playero, comp)
  welcome
  puts "Please choose to play human(1) or computer(2):"
  input = gets.chomp
  if input == "1"
    tictactoep2p(spaces, playerx, playero)
  else
    tictactoecomp(spaces, playerx, comp)
  end
end


player_choose(spaces, playerx, playero, comp)
