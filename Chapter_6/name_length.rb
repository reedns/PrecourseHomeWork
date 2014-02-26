puts 'What is your first name?'
first = gets.chomp
puts 'and your middle name?'
middle = gets.chomp
puts 'and your last?'
last = gets.chomp
name_length = first.length + middle.length + last.length
puts 'Did you know your name has ' + name_length.to_s + ' letters in it, ' + first + '?'