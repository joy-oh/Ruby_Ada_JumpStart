# create an election program that aceepts input from the user and outputs the winner of the election
puts "Welcome to my election voting program."
puts "\nElection candidates are: A: Donald Duck, B: Minnie Mouse, C:Goofy."

donald = 0
minnie = 0
goofy = 0

# input: poll 10 people for their vote
while (donald + minnie + goofy) < 10 do 
    puts "Please pick one candidate."
    answer = gets.chomp.downcase
    if answer == "a" || answer == "donald duck" || answer == "donald" || answer == "duck" 
        donald += 1
    elsif answer == "b" || answer == "minnie mouse" || answer == "minnie" || answer == "mouse"
        minnie += 1
    elsif answer == "c" || answer == "goofy"
        goofy += 1
    end
end

# output: print the total votes cast as well as the winner of the election
print "\nVote Summery \nDonald Duck - #{donald} "
 if donald > 1
    puts "votes"
 else puts "vote"
 end
print "Minni Mouse - #{minnie} "
 if minnie > 1
    puts "votes"
 else
    puts "vote"
 end
print "Goofy - #{goofy} "
 if goofy > 1 
    puts "votes"
 else
    puts "vote\n"
 end

# ask user to vote again if there is a tie vote.
if (donald > minnie) && (donald > goofy)
    puts "WINNER: Donald Duck!"
elsif (minnie > donald) && (minnie > goofy)
    puts "WINNER: Minnie Mouse!"
elsif (goofy > donald) && (goofy > minnie)
    puts "WINNER: Goofy!"
else
    puts "No winner. Please vote again from the beginning."
end
