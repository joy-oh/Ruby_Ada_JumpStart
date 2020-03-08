names = Array.new
done = false
until done 
    puts "Type a name."
    dup = false
    name = gets.chomp.upcase
    names.each do |n|
        if n == name
            dup = true
        end
    end
    if name == ""
        done = true
    else
        if dup == false
            names = names << name
        end 
    end
end
print names
puts "\n"