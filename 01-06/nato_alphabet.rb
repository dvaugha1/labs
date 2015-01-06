alphabet = { 'a' => "albert", 'b' => "brit", 'c' => "cat", 'd' => "dog", 'e' => "ear", 'f' => "fine", 'g' => "greg", 'h' => "hi", "i" => "indigo", 'j' => "juliet", 'k' => "kilo", 'l' => "lima", 'm' => 'mike', 'n' => 'nope', 'o'=>'omega', 'p' => 'pint', 'q' => "quail", 'r' => "romeo", 's' => 'silo', 't' => 'tom', 'u' => 'uber', 'v' => 'vita', 'w' => 'walk', 'x' => 'xerxes', 'y' => 'yeah', 'z' => 'zule'}
msg = "test"

alt_msg = "tom hi ear"

def encode (msg, alphabet)

msg.each_char do |c|
  puts alphabet [c]

end
end

def decode (alt_msg, alphabet)

alt_msg.split.each do |c|
    puts alphabet.invert[c]
end
end


encode(msg, alphabet)

decode(alt_msg, alphabet)
