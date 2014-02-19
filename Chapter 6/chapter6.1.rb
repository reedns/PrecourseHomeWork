puts 'What\'s your first name?'
name1 = gets.chomp
puts 'What\'s your middle name?'
name2 = gets.chomp
puts 'What\'s last name?'
name3 = gets.chomp
name = name1.length + name2.length + name3.length
puts 'Did you know there are ' + name.to_s + ' letters'
puts 'in your name, ' + name1 + '?'