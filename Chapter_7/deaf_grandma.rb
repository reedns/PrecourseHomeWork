bye_count = 0
while true 
  puts 'Tell your grandma something!'
  input = gets.chomp 
  if input == input.downcase
    puts 'HUH? SPEAK UP, SONNY!'
  else input == input.upcase
    puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
  end
  if input == 'BYE'
    bye_count = bye_count + 1
  else
    bye_count = 0
  end
  if bye_count == 3
    puts 'BYE, SONNY!'
    break
  end
end