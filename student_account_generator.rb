names = Array.new
id_numbers = Array.new
email_addresses = Array.new

5.times do 
    puts "Please type in a student name(first and last name)"
    name = gets.chomp.upcase
    names << name
end
until id_numbers.length == names.length
    found = false
    number = rand(111111..999999)
    id_numbers.each do |n|
        if n == number
            found = true
        end
    end
    if !found
        id_numbers << number
    end
end

names.length.times do |n|
    spaces = []
    names[n].length.times do |i|
        if names[n].slice(i) == " "
          spaces.push(i)
        end
    end
    if spaces.length == 2
        second_initial = names[n].slice(spaces[0]+1)
        last_name = names[n].slice(spaces[1]+1,names[n].length - 1)
        #last3digits = id_numbers[n] % 1000
        email_addresse = names[n].slice(0) + second_initial + last_name + id_numbers[n].to_s.slice(3, 3) + "@adadevelopersacademy.org"
        email_addresses = email_addresses <<email_addresse
    else spaces.length == 1
        last_name = names[n].slice(spaces[0]+1,names[n].length - 1)
        #last3digits = id_numbers[n] % 1000
        email_addresse = names[n].slice(0) + last_name + id_numbers[n].to_s.slice(3, 3) + "@adadevelopersacademy.org"
        email_addresses = email_addresses <<email_addresse
    end
end
names.length.times do |n|
    print names[n] + ", "+ id_numbers[n].to_s + ", " + email_addresses[n]
    print "\n"
end
