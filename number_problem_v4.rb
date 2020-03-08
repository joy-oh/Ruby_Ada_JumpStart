puts "Let's play a number game. How many numbers would you like to enter?"
length = gets.chomp.to_i
numbers = Array.new
i = 0
length.times do 
    i = i + 1
    if i == 1
        puts "Enter the 1st positive integer."
    elsif i == 2
        puts "Enter the 2nd positive integer." 
    elsif i == 3
        puts "Enter the 3rd positive integer."
    else 
        puts "Enter the #{i}th positive integer."
    end
    integer = gets.chomp.to_i
    numbers = numbers << integer
end
puts "Comparing to the last value entered, #{numbers[length-1]}, here are the observations:"
t = 0
length.times do
    print "The value at index #{t}, #{numbers[t]} is "
    if numbers[t] > numbers[length-1]
        puts "greater than  value at the last index, #{numbers[length-1]}."
    elsif numbers[t] < numbers[length-1]
        puts "less than value at the last index, #{numbers[length-1]}." 
    else 
        puts "equal to the value at the last index, #{numbers[length-1]}."
    end
    t = t + 1
end
minimum = numbers[0]
maximum = numbers[0]
total = 0
numbers.each do |n|
    total = total + n
    if minimum > n
        minimum = n
    end
    if maximum < n
        maximum = n
    end
end
puts "The minimum value in the array is #{minimum}."
puts "The maximum value in the array is #{maximum}."
average = total/length.to_f
puts "The average of all the value in the array is #{average}."