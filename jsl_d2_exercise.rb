# number = gets.chomp.to_i
# if number > 70
#     puts "PASSING"
# else 
#     puts "NOT PASSING"
# end

# string = gets.chomp.downcase
# if string == "green"
#     puts "GO"
# else 
#     puts "STOP"
# end

# number = gets.chomp.to_i
# if number % 2 == 0
#     puts "EVEN"
# else 
#     puts "ODD"
# end

# number = gets.chomp.to_i
# if number % 5 == 0
#     puts "MULTIPLE OF 5"
# else 
#     puts "NOT A MULTIPLE OF 5"
# end

# number = gets.chomp.to_i
# if number < 10
#     puts "ONE DIGIT"
# elsif number >= 100
#     puts "THREE DIGIT"
# else 
#     puts "TWO DIGIT"
# end

# jersey_number = gets.chomp.to_i
# if jersey_number == 12 || jersey_number == 71 || jersey_number == 80
#     puts "That number is retired from the Seattle Seahawks!"
# end

# state = gets.chomp.capitalize
# if state == "Washington" || state == "Oregon" || state == "Idaho"
#     puts "This state is in the PNW"
# else
#     puts "You should move to the PNW; it's great here!"
# end

rate_of_pay = gets.chomp.to_i
hours_worked = gets.chomp.to_i
if hours_worked <= 40
    puts "gross pay = #{rate_of_pay * hours_worked}"
elsif hours_worked > 40 && hours_worked <= 60
    puts "gross pay = #{(rate_of_pay * 40) + (rate_of_pay * 1.5 * (hours_worked - 40))}"
else 
    puts "Please see manager"
end

