# ask the user to input a positive integer value
puts "Type a positive interger"
# convert the user input to an integer and save the value in a variable
input_1 = gets.chomp.to_i
# add 20 to each of the tree numbers and print this new value for each to the console
puts "Type a positive interger"
input_2 = gets.chomp.to_i

puts "Type a positive interger"
input_3 = gets.chomp.to_i
puts ""

puts "Twenty added to the numbers you entered gives us " +
  "#{input_1 + 20}, #{input_2 + 20}, #{input_3 + 20}."