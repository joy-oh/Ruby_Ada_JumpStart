puts "Enter a password that contains at least 8 or more characters including at least a number and a symbol (@, $, \*, or !)"
password = gets.chomp 
num = 0
i = 0
if password.length >= 8
    until i == password.length - 1
        c = password.slice(i)
        if c >= "0" && c <= "9"
                num += 1
        end
        i += 1
    end
end
if  num >= 1 
    puts "You can use the password you entered."
else
    puts "You can't use the password entered."
end