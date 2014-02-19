puts 'What\'s your first name?'
first_name = gets.chomp + ' '
puts 'Your first name is ' + first_name + '. And your middle name is?'
middle_name = gets.chomp + ' '
puts 'And what\'s your last name?'
last_name = gets.chomp + ' '
full_name = first_name + middle_name + last_name
puts 'Hello, ' + full_name + '! Pleased to meet you!'