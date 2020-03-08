#generate a random number between 0-1000 (include 0 but exclude 1000)
random = rand(999)

#user to guess the answer until she gets it 
times = 0
guess = 0
until random == guess
    puts "guess one number between 1-999, all inclusive."
    guess = gets.chomp.to_i
    #print higher or lower each time guesses
    if guess < random
        puts "guess higher"    
    else 
        puts "guess lower"
    end
    times += 1
end

#when user gets the answer, print a winning message along with their total number of guesses.
print "You got it in "
if times == 1
    puts "#{times} guess."
else
    puts "#{times} guesses"
end