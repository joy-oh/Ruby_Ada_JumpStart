puts "What is your birthday? mm/dd/yyyy"
birthday = gets.chomp.to_s
birth_month = birthday.slice(0, 2).to_i
birth_date = birthday.slice(3, 2).to_i
birth_year = birthday.slice(6, 4).to_i
birthday = Time.local(birth_year, birth_month, birth_date)
time = Time.now
age = ((time - birthday)/60/60/24/365).to_i
puts age

birthday_left = 0
if time.month > birth_month
    birthday_left = Time.local(time.year + 1, birth_month, birth_date) - time
else 
    birthday_left = Time.local(time.year, birth_month, birth_date) - time
end
puts birthday_left