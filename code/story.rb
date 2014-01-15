def prompt(choice_1, choice_2)
    print "(Type " + choice_1 + " or " + choice_2 + ") > "
end

puts "There are two potions: red and blue."
puts "Which do you drink?"

prompt("red", "blue")

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
