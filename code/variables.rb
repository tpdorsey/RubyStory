name = "Terry"
food = "donuts"
number = 100

puts "My name is #{name}."
puts "I ate #{number} #{food} yesterday."

puts "My name is %s." % name
puts "I ate %d %s yesterday." % [number, food]

another_number = number + 3

puts "That's %d dozen." % [number / 12]