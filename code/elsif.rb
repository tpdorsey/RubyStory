puts "You are in a large room."
puts "There are two potions: red and blue."
puts "Which do you drink (red or blue)?"

potion = gets.chomp

if potion.downcase == "red"
    puts "You drink the red potion."
    puts "You burn in a conflagration of flames."
elsif potion.downcase == "blue"
    puts "You drink the blue potion."
    puts "You freeze in a column of ice."
else
    puts "Goodbye."
end