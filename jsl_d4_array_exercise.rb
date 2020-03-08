list = [3, 5, 6, 15, 27]
sum = 0

list.each do |num|
    sum += num.to_f
end
average = sum / list.length
puts "The average is #{average}"