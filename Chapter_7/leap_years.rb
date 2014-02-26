puts 'Please enter starting year.'
start = gets.chomp
puts 'Please enter ending year.'
fin = gets.chomp
puts 'Here are the Leap Years:'
years = start.to_i
ending = fin.to_i

while true
  years = years + 1
  if years % 4 == 0 || (years % 100 && years %400) == 0
  puts years.to_s
  end
  if years == ending
    break
  end
end
