h1 = {
    random_numbers: [],
    user_input: []
}
h2 = Hash.new
5.times do
    random_number = rand(12..21)
    h1[:random_numbers].push(random_number)
    h2.keys.push(random_number)
    if h2[random_number] == nil
        h2[random_number] = {program: 0, user: 0}    
    end
    h2[random_number][:program] += 1
end
puts "enter a number between 12 to 21, both inclusive."
i = 1
until h1[:user_input].length == 5
    puts "what's number #{i}?"
    answer = gets.chomp.to_i
    if answer >= 12 && answer <= 21
        h1[:user_input].push(answer)
        if h2[answer] == nil
            h2[answer] = {program: 0, user: 1}
        else
            h2[answer][:user] += 1
        end
        i += 1
    else 
        puts "your number is not in between 12 to 21."
    end
end

print h2

3.times do
    puts "Give me a number you want information about."
    number_info= gets.chomp.to_i
    found_random = 0
    found_user = 0
    h1[:random_numbers].each do |n|
        if number_info == n
            found_random += 1
        end
    end
    h1[:user_input].each do |n|
        if number_info == n
            found_user += 1
        end
    end
    puts "Using only the first hash:"
    if found_random == 0 
        puts "The number, #{number_info}, did not show in the randomly generated numbers."
        print "The number, #{number_info}, "
        if found_user == 0
            puts "was not provided by the user earlier."
        else   
            puts "was provided #{found_user} time(s) by the user earlier."
        end
    else
        puts "The number, #{number_info}, shows up #{found_random} time(s) in the randomly generated numbers."
        print "The number, #{number_info}, "
        if found_user == 0
            puts "was not provided by the user earlier."
        else   
            puts "was provided #{found_user} time(s) by the user earlier."
        end
    end
    puts "Using only the second hash:"
    
    if h2[number_info] != nil
        print "The number, #{number_info}, "
        if h2[number_info][:program] != 0
            puts "shows up #{h2[number_info][:program]} time(s) in the randomly generated numbers."
        else
            puts "did not show in the randomly generated numbers."
        end
        print "The number, #{number_info}, "
        if h2[number_info][:user] != 0
            puts "was provided #{h2[number_info][:user]} time(s) by the user earlier."
        else 
            puts "was not provided by the user earlier."
        end  
    else 
        puts "The number, #{number_info}, did not show in the randomly generated numbers."
        puts "The number, #{number_info}, was not provided by the user earlier."
    end
end