names = Array.new
done = false
while !done
    puts "Type a name."
    name = gets.chomp.upcase
    if name == ""
        done = true
    else
       names = names << name  
    end
end
puts "How many duplicates do you allow?"
dup = gets.chomp
names.length.times do |i|
    puts i
    if names[i] == names [i + 1]
        if names[i] > dup
    

    else
    end
end
   


