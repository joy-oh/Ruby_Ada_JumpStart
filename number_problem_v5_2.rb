h1 = {
    random_numbers: [],
    user_input: []
}
random_numbers = []
user_input =[]
5.times do
    random_number = rand(12..21)
    h1[:random_numbers].push(random_number) 
    random_numbers.push(random_number)
end
puts "enter a number between 12 to 21, both inclusive."
i = 1
until h1[:user_input].length == 5
    puts "what's number #{i}?"
    answer = gets.chomp.to_i
    if answer >= 12 && answer <= 21
        h1[:user_input].push(answer)
        user_input.push(answer)
        i += 1
    else 
        puts "your number is not in between 12 to 21."
    end
end
h2 = {}
random_numbers.each do |n|
    if h2[n] == nil
        h2[n] = {
            program: 0,
            user: 0
        }
    end
    h2[n][:program] += 1
end
user_input.each do |n|
    if h2[n] == nil
        h2[n] = {
            program: 0,
            user: 0
        }
    end
    h2[n][:user] += 1
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
    h2.keys.each do |n|
        if number_info == n 
            print "The number, #{number_info}, "
            if h2[n][:program] == 0 
                puts "did not show in the randomly generated numbers."
            else 
                puts shows up "#{found_random} time(s) in the randomly generated numbers."
            end
            print "The number, #{number_info}, "
            if h2[n][:user] == 0
            puts "was not provided by the user earlier." 
            else 
            puts "was provided #{found_user} time(s) by the user earlier."
            end
        end
    end
    puts "The number, #{number_info}, did not show in the randomly generated numbers."
    puts "The number, #{number_info}, was not provided by the user earlier."  `      
end
