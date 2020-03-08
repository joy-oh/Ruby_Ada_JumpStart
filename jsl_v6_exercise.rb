puts "Welcome to Hash Fun."
puts "I will be asking you for the names, ages, and favorite colors of your closest friends."
puts "How many close friends do you have?"
close_friends_numbers = gets.chomp.to_i
close_friends = Array.new
favorite_colors = Array.new
close_friends_numbers.times do |i|
    puts "What is friend #{i + 1} name?"
    friend_name = gets.chomp.capitalize
    puts "What is friend #{i + 1} age?"
    friend_age = gets.chomp.to_i
    puts "What is friend #{i + 1} favorite color?"
    favorite_color = gets.chomp
    favorite_colors << favorite_color
    close_friends << {name: friend_name, age: friend_age}
end
friend_under_18 = []
n = 0
close_friends.length.times do |i|
    if close_friends[i][:age] < 18
        friend_under_18.push(close_friends[i][:name])
        n += 1
    end
end
puts "You have #{n} close friend(s) under 18 #{friend_under_18}."
puts "Your friends have #{favorite_colors.uniq.length} unique favorite color(s) #{favorite_colors.uniq}."
    
