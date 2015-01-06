puts "Please guess a number."
correct = rand(0..100)
number = gets.chomp
guess = number.to_i

until guess == correct do
  if guess < correct
    puts "Your number was less than the correct number!  Please try again!"
    print "Please guess a number:"
    number = gets.chomp
    guess = number.to_i
  elsif guess > correct
    puts "Your number was greater than the correct number!  Please try again!"
    print "Please guess a number:"
    number = gets.chomp
    guess = number.to_i
if guess == correct
  puts "Congratulations!"
  end
end
end
