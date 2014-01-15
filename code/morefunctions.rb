def colors(your_color)
    if your_color == "purple"
        puts "I love purple, too!"
    else
        puts "That's a nice color (yawn)..."
    end
end

print "What's your favorite color? "
your_color = gets.chomp

# def prompt(question)
#     print question
#     answer = gets.chomp
#     return answer.downcase
# end

# your_color = prompt("What's your favorite color? ")

colors(your_color)