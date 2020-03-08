# must use iteration variable#
# ask user to input a positive integer value#
#if the number is divisible by 3, display a message to share so and a different message otherwise#
puts "Let's play a numbers game. How many numbers would like to enter?"

number = gets.chomp.to_i
i = 0
until i == number
    if i == 0
        puts "Enter the 1st positive integer." 
    elsif i == 1
        puts "Enter the 2nd positive integer."
    elsif i == 2
        puts "Enter the 3rd positive integer." 
    else
        puts "Enter the #{i + 1}th poisitive integer"
    end
    positive_integer = gets.chomp.to_i
    if positive_integer % 3 == 0
        puts "Your #{positive_integer} is divisible by 3."
    else
       puts "Your #{positive_integer} is not divisible by 3."
    end  
    i += 1 
end        