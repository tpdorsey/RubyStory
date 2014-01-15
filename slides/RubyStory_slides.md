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
