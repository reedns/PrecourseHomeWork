puts "Hi, what's your favorite number?"
number = gets.chomp
new_number = number.to_i + 1
better_number = new_number.to_s
puts 'Try ' + better_number + ' as your new favorite number and let us know how you like it!'