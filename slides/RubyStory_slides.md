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