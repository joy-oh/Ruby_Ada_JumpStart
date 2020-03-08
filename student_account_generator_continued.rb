student_data = []
id_numbers = Hash.new
i = 0
done = false
until done
    puts "Please type in a student name(first and last name)"
    student_name = gets.chomp.upcase
    id_number = nil
    until id_number != nil
        id_number = rand(111111..999999)
        if id_numbers[id_number] == nil
            id_numbers[id_number] = true
        else
            id_number = nil            
        end
    end
    puts id_number
    last_name = ""
    student_name.length.times do |i|
        if student_name.slice(i) == " "
            last_name = student_name.slice(i + 1..student_name.length-1)
        end
    end
    puts last_name
    email_address = student_name.slice(0) + last_name + (id_number % 1000).to_s + "@adadevelopersacademy.org"
    student_data.push({
        name: student_name,
        id_number: id_number,
        email_address: email_address
    })
    puts "Would you like to add more student's information? Type Y or N."
    answer = gets.chomp.upcase
    if answer == "N"
        done = true
    end
end
puts student_data