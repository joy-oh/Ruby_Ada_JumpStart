# creating a Madlib
# use "here comes the sun" from Beatles
# ask for a noun
puts "Please type a noun."
noun = gets
noun = noun.chomp

# ask for a adjective
puts "Please type an adjective."
adjective = gets.chomp

# ask for another adjective
puts "Please type one more adjective."
adjective_1 = gets.chomp

# ask for a name
puts "What is your name?"
name = gets.chomp

# ask for a number
puts "Choose one number."
number = gets.chomp

# ask for a place
puts "Write a name of place."
place = gets.chomp

# ask for a season
puts "Pick a season."
season = gets.chomp

# ask for a temperature
puts "How is the temperature now?"
temperature = gets.chomp

# ask for a length
puts "How long is your hair?"
length = gets.chomp

# ask for a word for feeling
puts "How is your feeling?"
feeling = gets.chomp

# run Madlib with answers
puts "\n"
puts "Here comes the " + noun + " (doo doo doo)"
puts "Here comes the " + noun + ", and I say"
puts "It's all " + adjective
puts "\n"
puts "Little " + name.capitalize + ", it's been a " + length + " " + temperature + " " + feeling + " " + season
puts "Little " + name.capitalize + ", it feels like #{number} years since it's been in " + place.upcase 
# pat my shoulder