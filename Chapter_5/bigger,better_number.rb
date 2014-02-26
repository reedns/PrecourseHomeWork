puts 'What\'s your favorite number?'
num = gets.chomp
new_num_i = num.to_i + 1
new_num_s = new_num_i.to_s
puts 'We recommend ' + new_num_s + ' as your new favorite number!' 