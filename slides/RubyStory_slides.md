!SLIDE

# What is Programming?

What do you think of when I say "programming"?

What does it mean to you?

!SLIDE

A **program** is just instructions that tell the computer what to do.

A **programming language** is words (commands) and the way you write those words (grammar or syntax) to make the computer do something.

!SLIDE

Your Mac comes with a bunch of programming tools already installed: 

* AppleScript
* Automator
* Bash
* PHP
* Python
* Ruby
* Xcode and Objective-C

!SLIDE

Ruby was written by Yukihiro Matsumoto (Matz) in 1995.

!SLIDE

@@@ ruby
    puts "This is some Ruby code"
@@@

!SLIDE

We use simple "text" files for a lot of programming. We need a program to write them in that doesn't add any formatting.

!SLIDE

Open TextEdit. Let's do some setup to make it work better for programming.

!SLIDE

@@@
    whoami > hello.rb
@@@

!SLIDE

@@@
    open -e hello.rb
@@@

!SLIDE

@@@ ruby
    puts "tpdorsey"
@@@

!SLIDE

@@@ ruby
    puts "Hello, my name is Terry."
    puts "This is my program."
@@@

!SLIDE

@@@
    hello.txt:1: syntax error, unexpected tINTEGER, expecting end-of-input
    puts "2 + 2 is " 2 + 2
                      ^ 
@@@

!SLIDE

@@@ ruby
    puts 2 + 2
    puts 10 - 3
    puts 3 * 10
    puts 7 / 2
    puts 7 % 2
@@@

!SLIDE

@@@ ruby
    puts 5 > 3
    puts 5 < 3
    puts 5 == 5
    puts 5 != 3
    puts "five" == 5
@@@

!SLIDE

@@@ ruby
    # This line does nothing. It's a comment.
    puts "This line still does something."
@@@

!SLIDE

@@@ ruby
    # puts "This line does nothing."
@@@

!SLIDE

A **variable** is a name we give to an object in a program so we can reference it conveniently within the program.

!SLIDE

@@@ ruby
    variable_name = variable_value
@@@

!SLIDE

@@@ ruby
    name = "Terry"
    food = "donuts"
    number = 100 
@@@

!SLIDE

@@@ ruby
    puts "My name is #{name}."
    puts "I ate #{number} #{food} yesterday."    
@@@

!SLIDE

@@@ ruby
    puts "My name is %s." % name
    puts "I ate %d %s yesterday." % [number, food]    
@@@

!SLIDE

%d says you're going to substitute a number (decimal)

%s says you're going to substitute a string

!SLIDE

@@@ ruby
    another_number = number + 3
@@@

!SLIDE

@@@ ruby
    puts "That's %d dozen." % [number / 12]
@@@

!SLIDE

@@@ ruby
    one = "A"
    two = "B"
    three = "C"
    format = "%s %s %s"
    
    puts "I know my %s %s %s's" % [one, two, three]
    puts format % [one, two, three]
@@@

!SLIDE

@@@ ruby
    puts one + two + three
@@@

!SLIDE

@@@ ruby
    puts one + " " + two + " " + three
@@@

!SLIDE

What happens if you assign a variable, but don't use it?

What happens if you try to use a variable that you haven't assigned?

!SLIDE

## Asking Questions, Getting Answers

!SLIDE

@@@ ruby
    print "What is your name? "
    name = gets.chomp
    puts "Oh, your name is #{name}."
@@@

!SLIDE

@@@ ruby
    print "Give me a number: "
    number = Integer(gets.chomp)
@@@

!SLIDE

@@@ ruby
    print "Give me a number: "
    number = Integer(gets.chomp)

    print "What is your favorite food? "
    food = gets.chomp
    
    puts "I ate %d %s yesterday." % [number, food]
@@@

!SLIDE

@@@ ruby
    print "Prints keeps everything on the same line, but... "
    puts "Puts starts a new line after it prints."
@@@

!SLIDE

## Making Decisions

!SLIDE

* < Less Than
* \> Greater Than
* == Equal To
* <= Less Than Or Equal To
* \>= Greater Than Or Equal To
* ! Not (Opposite Of)
* != Not Equal To

!SLIDE

@@@ ruby
    alice = 2
    bob = 3

    puts bob > alice     # Is bob greater than alice?
    puts bob < alice     # Is bob less than alice?
    puts bob != alice    # Is bob not equal to alice?
    puts !(bob != alice) # The opposite of "is bob not equal to
                         # alice?"
@@@

!SLIDE

We can do a lot by just testing for *equality* (or matching)

!SLIDE

@@@ ruby
    potion = "red"
    sky = "blue"
    puts potion == "blue"
    puts sky == "blue"
@@@

!SLIDE

## If Statements

!SLIDE

@@@
    if statement
        command to do
    end
@@@

!SLIDE

The *statement* tests whether something is true or false

!SLIDE

@@@ ruby
    if bob > alice
        puts "bob is older than alice."
    end
@@@

!SLIDE

@@@ ruby
    if alice == 2
        puts "Alice is 2."
        
        if bob > alice
            puts "Bob is older than Alice."
        end
    end
@@@

!SLIDE

## Else and Elsif

!SLIDE

If the statement is true, do something. If the statement is false, do something *else*. 

!SLIDE

@@@ ruby
    if statement
        command to do if statement is true
    else
        command to do if statement is false
    end
@@@

!SLIDE

@@@ ruby
    if statement 1
        command to do if statement 1 is true
    elsif statement 2
        command to do if statement 2 is true
    else
        command to do if all statements are false
    end
@@@

!SLIDE

@@@ ruby
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
@@@

!SLIDE

Now we're getting somewhere interesting.

!SLIDE

## Functions - Programs Within Programs

Functions are little programs that we write within a bigger program. We write them once and can use them over and over.

!SLIDE

@@@ ruby
    def function_name
        command to do
    end 
@@@

!SLIDE

@@@ ruby
    def starting
        puts "Once upon a time..."
    end 

    starting # prints "Once upon a time..."
@@@

!SLIDE

Functions can take **arguments**, variables you give to the function to use.

!SLIDE

@@@ ruby
    def friend(name)
        print "My friend is " + name
    end 

    friend("Quinn") # prints "My friend is Quinn"
@@@

!SLIDE

@@@ ruby
    def friend(name)
        print "My friend is " + name
    end

    my_friend = "Quinn"
    friend(my_friend) 
@@@

!SLIDE

Functions can do work and return a value.

!SLIDE

@@@ ruby
    def friend(name)
        capitalized_name = name.upcase
        words = "Shouting my friend's name: " + capitalized_name
        return words
    end 

    friend("Quinn")
@@@

!SLIDE

@@@ ruby
    def colors(your_color)
        if your_color == "purple"
            puts "I love purple, too!"
        else
            puts "That's a nice color (yawn)..."
        end
    end
    
    print "What's your favorite color? "
    your_color = gets.chomp
    
    colors(your_color) 
@@@

!SLIDE

@@@ ruby
    def prompt(question)
        print question
        answer = gets.chomp
        return answer.downcase
    end

    your_color = prompt("What's your favorite color? ")
    colors(your_color) 
@@@

!SLIDE

## Functions and Global Variables

The variables we've used so far are **local variables**. Local variables can be used only within the current function.

!SLIDE

There are **global variables** that can be used anywhere in your program. 

Global variable names start with a $ character.

!SLIDE

@@@ ruby
    $global_variable = "You can use this anywhere." 
@@@

!SLIDE

@@@ ruby
    $name = "Charlie"
    
    def friends
        puts "My friend is " + $name
        $name = "Barbara"
    end

    friends
    friends
@@@

!SLIDE

## A Story Program

Now let's put everything we've learned so far together. We'll tell a story, and let the person who runs the program make choices about how the story proceeds.

!SLIDE

@@@ ruby
    puts "There are two potions: red and blue."
    puts "Which do you drink?"
    potion = gets.chomp 
@@@

!SLIDE

@@@ ruby
    if potion.downcase == "red"
        puts "You drink the red potion."
        puts "You burn in a conflagration of flames."
    elsif potion.downcase == "blue"
        puts "You drink the blue potion."
        puts "You freeze in a column of ice."
    else
        puts "Goodbye."
    end 
@@@

!SLIDE

A nice start, but two problems: 

* Nothing interesting happens if they type the wrong thing.
* If we make the story longer, we have to repeat the question-and-answer code over and over.

Let's fix that by making a function that asks the question

!SLIDE

@@@ ruby
    def prompt(choice_1, choice_2)
        print "(Type " + choice_1 + " or " + choice_2 + ") > "
    end
    
    prompt("red", "blue") 
@@@

!SLIDE

Better. What if the prompt function could do more, like print the question, chomp the answer and return it already converted to lowercase?

!SLIDE

@@@ ruby
    def prompt(choice_1, choice_2)
        print "(Type %s or %s): " % [choice_1, choice_2]
        answer = gets.chomp
        return answer.downcase
    end 
@@@

!SLIDE

This is a good example of a good rule in programming: **don't repeat yourself** (DRY).

!SLIDE

@@@ ruby
    def start
        puts "There are red and green potions on the table."
        puts "Which one do you drink?"
        potion = prompt("red", "green")

        if potion == "red"
            puts "You drink the red potion."
            puts "Fire burns your brain."
        elsif potion == "green"
            puts "You drink the green potion."
            puts "Moss grows on your toes."
        else
            puts "You didn't answer the question."
        end
    end
    
    start 
@@@

!SLIDE

You just have to call one function, start, and the story begins. 

!SLIDE

Using the same **pattern**, add more functions for more parts of the story. 

!SLIDE

Because we made prompt abstract it can be used anywhere in the story. We just have to tell it which options to allow.

!SLIDE

@@@ ruby
    def water
        puts "You see a glass of water."
        puts "Do you drink it or pour it on your head?"
        glass = prompt("drink", "pour")

        if glass == "drink"
            puts "You drink the water."
            puts "Ahhhh! Refreshing!"
        elsif glass == "pour"
            puts "You pour the water on your head."
            puts "Your brain is cooler now."
        else
            puts "You can't do that. Your brain is still burning."
        end
    end 
@@@

!SLIDE

@@@ ruby
    if potion == "red"
        puts "You drink the red potion."
        puts "Fire burns your brain."
        water 
    end
@@@

!SLIDE

By adding new functions, along with questions and answers that call them, you can extend the story as long as you like.

!SLIDE

When you're finished, give the .rb file to some friends and show them how to run your game.