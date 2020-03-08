# binary = Array.new(8) { |i| rand(0..1)}
# bi = ""
# binary.length.times do |i|
#     bi += "#{binary[i]}"
# end
# puts bi
# # b = binary.each { |bi| print bi } 
# # puts "\n"

# total = binary[7]
# i = 2
# a = 1 
# 7.times do 
#     if binary[-i]
#         a = a * 2
#         if binary[-i] == 1
#             total += a
#         end
#     end   
#     i += 1
# end
# puts "Decimal value of #{bi} is #{total}."

frequency = Array.new(128, 0)
puts "Please write a sentance."
sentence = gets.chomp.downcase

i = 0
until sentence.slice(i) == nil
    sen = sentence.slice(i)
    if sen != " "
        frequency[sen.ord] += 1 
    end
    i += 1
end

frequency.each_with_index do |count, index| 
    if count != 0 && index.chr >= "a" && index.chr <= "z"
    puts "#{index.chr}: #{count}"
    end
end

# puts "Please write a sentance."
# sentance = gets.chomp.downcase
# a = 0
# b = 0 
# c = 0
# d = 0
# e = 0 
# f = 0 
# g = 0 
# h = 0
# i = 0
# j = 0
# k = 0
# l = 0
# m = 0
# n = 0
# o = 0
# p = 0
# q = 0
# r = 0
# s = 0
# t = 0
# u = 0
# v = 0 
# w = 0 
# y = 0 
# z = 0
# i = 0 
# until sentance.slice(i) == nil
#     sen = sentance.slice(i)
#     if sen == "a" 
#         a += 1
#     elsif sen == "b"
#         b += 1
#     elsif sen == "c"
#         c += 1
#     elsif sen == "d"
#         d += 1
#     elsif sen == "e"
#         e += 1
#     elsif sen == "f"
#         f += 1
#     elsif sen == "g"
#         g += 1
#     elsif sen == "h"
#         h += 1
#     elsif sen == "i"
#         i += 1
#     elsif sen == "j"
#         j += 1
#     elsif sen == "k"
#         k += 1
#     elsif sen == "l"
#         l += 1
#     elsif sen == "m"
#         m += 1
#     elsif sen == "n"
#         n += 1
#     elsif sen == "o"
#         o += 1
#     elsif sen == "p"
#         p += 1
#     elsif sen == "q"
#         q += 1
#     elsif sen == "r"
#         r += 1
#     elsif sen == "s"
#         s += 1
#     elsif sen == "t"
#         t += 1
#     elsif sen == "u"
#         u += 1
#     elsif sen == "v"
#         v += 1
#     elsif sen == "w"
#         w += 1
#     elsif sen == "x"
#         x += 1
#     elsif sen == "y"
#         y += 1
#     elsif sen == "z"
#         z += 1
#     end 
#     i += 1
# end
# frequency = Array.new
# frequency.push("a: #{a}", "b: #{b}", "c: #{c}", "d: #{d}", "e: #{e}", "f: #{f}", "h: #{h}", "i: #{i}", "j: #{j}")
# puts "#{frequency}"

# invited = ["JOY OH", "JULIO MERINO", "EVA MERINO", "DAVID MERINO", "A C", "A S", "B D"]
# puts "Ask me if certain person is invited"
# person = gets.chomp.upcase
# if invited.include?(person)
#     puts "INVITED"
# else
#     puts "NOT INVITED"
# end

# decimal_numbers = []
# total = 0
# 5000.times do
#     random = rand(0...1.0)
#     decimal_numbers.push(random)
#     total += random
# end
# average = total / 5000
# puts "#{decimal_numbers}"
# puts average

# decimal_numbers = Array.new(5000) { |i| rand(0...1.0)}
# total = 0
# decimal_numbers.each { |num| total += num}
# average = total / 5000
# puts average

# random_numbers = []
# 5.times do 
#     random = rand(0..10)
#     random_numbers.push(random)
# end
# puts "#{random_numbers}"
# squares = Array.new(5) { |i| random_numbers[i] * random_numbers[i] }
# puts "#{squares}"

# money_spent =[]
# puts "Please enter the amount of money spent on each person."
# 4.times do |i|
#     print "Enter the amount for "
#     if i + 1 == 1
#         puts "1st person"
#     elsif i + 1 == 2
#         puts "2nd person"
#     elsif i + 1 == 3
#         puts "3rd person"
#     else
#         puts "4th person"
#     end
#     money = gets.chomp.to_f
#     money_spent.push(money)
# end
# total = 0
# money_spent.each do |mon|
#     total += mon
# end
# puts "Total money spent is $%.2f." %total

# fires = ["firetruck", "fire drill", "fire hydrant", "firefighter", "fireproof", "fire station", "fire hose"]
# fires.each do |i|
#     if i.slice(4) == " "
#         n = i.slice(5..i.length - 1)
#     else 
#         n = i.slice(4..i.length - 1) 
#     end 
#     if i != fires.last
#         print n + ", "
#     else 
#         puts n
#     end
# end
 
# found = 0
# booleans.each do |bool|
#     if bool == true
#         found += 1
#     end
# end
# if found == 3
#     puts "YES"
# else
#     puts "NO"
# end

# booleans = []
# until booleans.length == 3
#     puts "Please enter 'true' or 'false'."
#     boolean = gets.chomp
#     if boolean == "true"
#         booleans.push(true)
#     elsif boolean == "false"
#         booleans.push(false)
#     end
# end

# names = []
# 5.times do 
#     puts "Please enter a name."
#     name = gets.chomp.upcase
#     names.push(name)
# end
# puts "#{names}"






        