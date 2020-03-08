# must use iteration variable#
# ask user to input a positive integer value#
#if the number is divisible by 3, display a message to share so and a different message otherwise#
puts "Let's play a numbers game. How many numbers would like to enter?"

number = gets.chomp.to_i
i = 1 

number.times do
    if i % 10 == 1
        order = "#{i}st"
    elsif i % 10 == 2
        order = "#{i}nd" 
    elsif i % 10 == 3
        order = "#{i}rd"
    else 
        order = "#{i}th"
    end
    puts "Enter your " + order + " positive integer."
    positive_integer = gets.chomp.to_i
    if positive_integer % 3 == 0
        puts "Your #{positive_integer} is divisible by 3."
    else
        puts "Your #{positive_integer} is not divisible by 3."
    end
    i += 1
end        