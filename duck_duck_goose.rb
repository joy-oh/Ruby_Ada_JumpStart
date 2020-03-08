#allow the user to enter player's number they want to call goose on
puts "which player do you want to Goose?"
goose = gets.chomp.to_i
#say "duck" for each player before the "goose", then say "goose" for the chosen player
num = 1
until goose == 1
    puts "Player #{num}: Duck"
    num += 1
    goose -= 1
end
puts "Player #{num}: Goose"
