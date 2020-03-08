#password verifacation program to check if a user creates a password with proper requirement.
correct = false
#loop the code to get a right password
until correct
    puts "Enter a password that contains at least 8 or more characters including at least a number, a symbol (@, %, *, or !), a capital and a lowercase letter."
    password = gets.chomp 
    i = 0
    num = 0
    sym = 0
    cap = 0
    low = 0
    if password.length >= 8
        until i == password.length
            c = password.slice(i)
            #check if there is a number
            if c >= "0" && c <= "9"
                num += 1
            #check if there is a symbol
            elsif c == "@" || c == "%" || c == "*" || c == "!"
                sym += 1
            #check if there is a capital letter
            elsif c >= "A" && c <= "Z"
                cap += 1
            #check if there is a lowercase letter
            elsif c >= "a" && c <= "z"
                low += 1
            end
            i += 1
        end
    end
    if  num >= 1 && sym >= 1 && cap >= 1 && low >= 1
        #ask to enter the correct password again to verify
        puts "Enter the same password enter to verify."
        repeat = gets.chomp
        if repeat == password
            correct = true
        else
            #tell user password entered doesn't match with previous one
            puts "You didn't enter the same password. Start over."
        end
    elsif num == 0 || sym == 0 || cap == 0 || low == 0
        #tell user password needs a have number
        if num == 0
            puts "Password requires at least one number."
        end
        #tell user password needs a have symbol
        if sym == 0
            puts "Password requires at least one symbol (@, %, *, !)"
        end
        #tell user password needs a capital letter
        if cap == 0
            puts "Password requires at least one capital letter."
        end
        #tell user password needs a lowercase letter
        if low == 0
            puts "Password requires at least one lowercase letter."
        end
    else
        #alert that the password entered doesn't meet the requirement
        puts "You can't use the password entered."
    end
end
#approve the password is good to use
puts "You can use the password entered."