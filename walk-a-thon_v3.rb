puts "Welcome to Joy's Walk-A-Thon Tracker."
puts "Our goal is to raise money!"

puts "Enter the earning goal for this event."
goal= gets.chomp.to_f
x = (goal * 100).to_i.to_s
a = x.slice(0...x.length-2)
b = x.slice(x.length-2,2)
d = (a + "." + b)
puts d

walkAThon = []
i = 0
5.times do |i|
    puts "Walker ##{i + 1}"
    puts "Enter amount earned per lap"
    amount_per_lap = gets.chomp.to_f
    puts "Please enter the number of laps completed by each person."
    laps = gets.chomp.to_f
    if walkAThon[i] == nil
        walkAThon.push({amout_per_lap: nil, laps: nil, earned: nil})
        if walkAThon[i][:amount_per_lap]= nil   
            walkAThon[i][:amount_per_lap] = amount_per_lap
        end
        if walkAThon[i][:laps] == nil
            walkAThon[i][:laps] = laps
        end
        if walkAThon[i][:earned] == nil
            walkAThon[i][:earned] = laps * amount_per_lap
        end
    end
    i += 1
end
highest_earned = walkAThon[0][:earned]
walkAThon.length.times do |i|
    if highest_earned < walkAThon[i][:earned]
        highest_earned = walkAThon[i][:earned]
    end
end
walker = Array.new
walkAThon.length.times do |i|
    if highest_earned == walkAThon[i][:earned]
        walker << "##{i + 1}"
    end
end
print "Highest Earning Walker(s): "
puts  walker
print "Total amount earned: "
hes = (highest_earned * 100).to_i.to_s
hes_a = hes.slice(0...hes.length-2)
hes_b = hes.slice(hes.length-2, 2)
hes_c = hes_a + "." + hes_b
puts "$#{hes_c}"
print "Goal Met? "
if goal <= highest_earned
    puts "YES! :)"
    beaten_by = highest_earned - goal
    btb = (beaten_by * 100).to_i.to_s
    btb_a = btb.slice(0...btb.length-2)
    btb_b = btb.slice(btb.length-2, 2)
    btb_c = btb_a + "." + btb_b
    puts "The goal was beaten by $#{btb_c}."
else
    puts "NO :-("
    missed_by = goal - highest_earned
    msb = (missed_by * 100).to_i.to_s
    msb_a = msb.slice(0...msb.length-2)
    msb_b = msb.slice(msb.length-2, 2)
    msb_c = msb_a + "." + msb_b
    puts "The goal was missed by $#{msb_c}."
end