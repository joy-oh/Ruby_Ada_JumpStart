#ask user to enter the number of petals on a flower. 
#ask the number again in order to add the value to the total number of petals.
puts "Enter a number of petals on a flower twice"

total = 0
petal_number = 0
2.times do
    petal_number = gets.chomp.to_i
    total += petal_number
end

#print "plucking petal #: They love me!" alternating between "They love me and "They love me not" with increased the petal number
total.times do |i|
    print "plucking petal ##{i + 1}"
    if i % 2 == 0
        puts "They love me!"
    else 
        puts "They love me not."
    end
end
        
    