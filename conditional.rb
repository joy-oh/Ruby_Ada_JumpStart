#ask user to type 2 numbers ; x and y
puts "Choose a number for x"
x = gets.chomp

puts "Choose a number for y"
y = gets.chomp

if x == y
    print "equal"
else 
    if x < y
        print "less"
    else    
        print "greater"
    end
end  
puts ""