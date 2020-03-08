puts "Let's play a number game."
sum = 0
minimum = 0
maximum = 0
i = 0
n = 1
until n == 0 do
    if i == 0
        puts "Please pick a number." 
    else
        puts "Please pick a number again."
    n = gets.chomp.to_f
    sum += n
    i = i + 1
    if minimum > n 
        minimum = n
    end
    if maximum < n
        maximum = n
    end 
end
average = sum / i
puts "The minimum number that you pick is #{minimum}."
puts "The maximum number that you pick is #{maximum}."
puts "The average from numbers you pick is #{average}."