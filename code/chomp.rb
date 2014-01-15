print "What is your name? "
name = gets.chomp
puts "Oh, your name is #{name}."

print "Give me a number: "
number = Integer(gets.chomp)

print "What is your favorite food? "
food = gets.chomp

puts "I ate %d %s yesterday." % [number, food]