names = Array.new
id_numbers = Array.new
email_addresses = Array.new
#ask for 5 names
5.times do 
    puts "Please type in a student name(first and last name)"
    name = gets.chomp.upcase
    names = names << name
end
# names = ["JOY OH", "MERIAH KAY", "YACINE DOLIVET", "LOLA KIM", "CARMEL MURPHY"]

#generate 5 random numbers
until id_numbers.length == 5
    number = rand(111111..999999)
    found = false
    #check if numbers are duplicated
    id_numbers.each do |n|
        if n == number
            found = true
        end
    end
    if !found
        id_numbers = id_numbers << number
    end 
end
print id_numbers
puts "\n"

#generate last names and generate email addresses
names.length.times do |n|
    i = 0
    until names[n].slice(i) == " "
          i = i + 1
    end
    last_name = names[n].slice(i+1,names[n].length - 1)
    #last3digits = id_numbers[n] % 1000
    email_addresse = names[n].slice(0) + last_name + (id_numbers[n] % 1000) + "@adadevelopersacademy.org"
    email_addresses = email_addresses <<email_addresse
end

#print name, id number and email address for 5 students
names.length.times do |n|
    print names[n] + ", "+ id_numbers[n].to_s + ", " + email_addresses[n]
    print "\n"
end
