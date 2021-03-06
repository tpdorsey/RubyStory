# Potions - a story told in Ruby

def prompt(choice_1, choice_2)
    print "(Type %s or %s): " % [choice_1, choice_2]
    answer = gets.chomp
    return answer.downcase
end

def blank
    puts ""
end

def start
    puts "There are red and green potions on the table."
    puts "Which one do you drink?"
    potion = prompt("red", "green")

    if potion == "red"
        blank
        puts "You drink the red potion."
        puts "Fire burns your brain."
        water
    elsif potion == "green"
        blank
        puts "You drink the green potion."
        puts "Moss grows on your toes."
        moss
    else
        blank
        puts "You didn't answer the question."
    end
end

def water
    puts "You see a glass of water."
    puts "Do you drink it or pour it on your head?"
    glass = prompt("drink", "pour")

    if glass == "drink"
        blank
        puts "You drink the water."
        puts "Ahhhh! Refreshing!"
    elsif glass == "pour"
        blank
        puts "You pour the water on your head."
        puts "Your brain is cooler now."
    else
        blank
        puts "You can't do that. Your brain is still burning."
    end
end

def moss
    puts "Should you sit down and rest, or go for a walk?"
    action = prompt("sit", "walk")

    if action == "sit"
        blank
        puts "You sit down to rest."
        puts "You start to take root."
        puts "Now you are a tree."
    elsif action == "walk"
        blank
        puts "You walk out the door."
        puts "Ah, mossy feet make comfortable shoes."
    else
        blank
        puts "You can't do that. Mossy feet are itchy."
    end
end

start
