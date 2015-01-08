## BEWARE THE SEMICOLON!


require 'set'

words = ['angus',
         'onomatopeia',
         'mississippi',
         'cookies',
         'terminal',
         'illness',
         'communist',
         'dictator',
         'capitalist',
         'marxist',
         'darwinism']

def finished? (turns, guessed, answer)
  turns.zero? || complete_word?(answer, guessed)
end

def greeting (turn_count)
  puts "Welcome to Hangman"
  puts " "
  puts "Try to guess the word letter by letter.  Can you succeed where others have failed?"
  puts " "
  puts "#{turn_count} mistakes and you will meet your doom!"
  # TODO: tell the player about hangman
end

def complete_word? (answer, guessed)
  answer.chars.all? {|l| guessed.include?(l)}
end

def game_over (answer, guessed)
  puts answer
  puts " "
  if complete_word?(answer, guessed)
    puts "Congratulations!"
  else
    puts "Sorry, you met your doom!"
  end
end

def prompt_player
  print "Please type in a letter:"
  msg = gets.chomp
  # TODO: get user input / show some status
end

def display_guesses (answer, guessed)
  result= answer.each_char do |c|
  if guessed.include?(c)
    print(c)
  else
    print "_"
  end
  end
end


def hangman(words)
  turn_count = ARGV.empty? ? 6 : ARGV[0].to_i
  guessed = Set.new
  answer = words.sample(1)[0]
  greeting(turn_count)
  until finished?(turn_count, guessed, answer)
    guess = prompt_player
    guessed.add(guess)
    display_guesses(answer,guessed)
    unless answer.include?(guess)
      turn_count -= 1
    end
  end
  puts" "
  game_over(answer, guessed)
end

hangman(words)
