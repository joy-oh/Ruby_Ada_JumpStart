#creating a bio program that accept user input and output of paragraphs contain with user input

#name
puts "What is your name?"
name = gets.chomp

#birthday
puts "What is your birthday? mm/dd/yyyy"
birthday = gets.chomp.to_s
birth_month = birthday.slice(0, 2).to_i
birth_date = birthday.slice(3, 2).to_i
birth_year = birthday.slice(6, 4).to_i
birthday = Time.local(birth_year, birth_month, birth_date)
time = Time.now

#age
age = ((time - birthday)/60/60/24/365).to_i

#birthday left
birthday_left = 0
if time.month > birth_month
    birthday_left = ((Time.local(time.year + 1, birth_month, birth_date) - time)/60/60/24).to_i
else 
    birthday_left = ((Time.local(time.year, birth_month, birth_date) - time)/60/60/24).to_i
end

#occupation
puts "What do you do?"
occupation = gets.chomp.downcase

#hobby
puts "What's your hobby?"
hobby = gets.chomp.downcase

#favorite color
puts "What's your favorite color?"
color = gets.chomp.downcase

#print bio
print name << " is "
    #determine to put an or a
    if occupation.slice(0) == "a" || occupation.slice(0) == "i" || occupation.slice(0) == "e" || occupation.slice(0) == "o" || occupation.slice(0) == "u"
        print "an "
    else
        print "a "
    end
print occupation << " who is " 
print age.to_s << "years old and whoes birthday is #{birthday_left}days left. Her Hobby is " << hobby 
print " and her favovite color is " << color << "."

