# ask user how much they have, assume that the $ symbol is part of the prompt(user doesn't have to enter it)
puts "How much money do you have?"
money = gets.chomp.to_f

# display all candy options and their cost (even if the user can't buy the candy)
puts "That's all?
Well, let me show you what we have here."
puts "A $0.50 M & M's
B $0.75 Twix
C $0.75 Peanut Butter Cup
D $0.75 Nutter Butter
E $1.00 Skittles
F $2.00 Haribo Gummy"

# decide whether user can afford the candy or not, if they can't tell them so, if they can, calculate and display their change
puts "\nWhat whould you like to purchase?"
response = gets.chomp.capitalize

if response == "A" || response == "B" || response == "C" || response == "D" || response == "E" || response == "F"    
    if response == "A"
        response = 0.5
    elsif response == "B"
        response = 0.75
    elsif response == "C"
        response = 0.75
    elsif response == "D"
        response = 0.75
    elsif response == "E" 
        response = 1.00
    elsif response == "F"
        response = 2.00
    end
if response <= money    
    change = money - response
    puts "That's a wondrful choice!
    Thank you for purchasing, and here is your $#{change} and your choice.
    Come again!"
    else    
    puts "You are broke! Take your money, $#{money} and go elsewhere."
    end
else 
    puts "You chose an invalid option. Start again."
end