puts "Welcome to Joy's Walk-A-Thon Tracker."
puts "Our goal is to raise money!"

puts "Enter the earning goal for this event."
goal= gets.chomp.to_f

puts "%.2f" %goal
puts "Enter amount earned per lap"
amount_per_lap = gets.chomp.to_f

puts "Please enter the number of laps completed by each person."
walkAThon = []
i = 1
5.times do 
    puts "Walker ##{i}"
    laps = gets.chomp.to_f
    if walkAThon[i - 1] == nil
        walkAThon.push({laps: nil, earned: nil})
        if walkAThon[i - 1][:laps] == nil
            walkAThon[i - 1][:laps] = laps
        end
        if walkAThon[i - 1][:earned] == nil
            walkAThon[i - 1][:earned] = laps * amount_per_lap
        end
    end
    i += 1
end
highest_earned = walkAThon[0][:earned]
walker = 1
walkAThon.length.times do |i|
    if highest_earned < walkAThon[i][:earned]
        highest_earned = walkAThon[i][:earned]
        walker = i + 1
    end
end
print "Highest Earning Walker: "
puts "##{walker}"
print "Total amount earned: "
puts '$%.2f' %highest_earned
print "Goal Met? "
if goal <= highest_earned
    puts "YES! :)"
    beaten_by = highest_earned - goal
    puts "The goal was beaten by $%.2f." %beaten_by
else
    puts "NO :-("
    missed_by = goal - highest_earned
    puts "The goal was missed by $%.2f." %missed_by
end