
class Hangman
  require 'set'
  def intialize (words, guess, hangman)
    @words = words = ['angus',
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
    @guess = puts "guess a letter"
             input = gets.chomp.to_s
    @hangman = turn_count = 6
    guessed = Set.new
    answer = @words.sample(1)[0]
    until turn_count == 0 || guessed == answer do
      @guess
      guessed.add(@guess)
      unless answer.include?(@guess)
        turn_count -= 1
      end
    end
  end
  def words
    @words
  end
  def guess
    @guess
  end
  def hangman
    @hangman
  end
end
