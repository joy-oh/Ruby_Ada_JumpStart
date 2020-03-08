# ask the user to input a positive integer value
puts "Enter a positive integer."
a = gets.chomp.to_i
if a >= 20
    puts "#{a} is greater than or equal to 20."
else 
    puts "#{a} is less than 20"
end
