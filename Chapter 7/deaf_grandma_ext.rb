puts 'HI, SONNY!'
bye_counter = 0

while true
  input = gets.chomp
  if input == 'BYE'
    bye_counter = bye_counter + 1
  else
    bye_counter = bye_counter + 0
  end

  if bye_counter == 3
    puts 'BYE BYE, SONNY'
      break          
  end
  if input == input.upcase
    puts 'NO, NOT SINCE ' + (rand(1930..1950)).to_s 
  else
    puts 'HUH! SPEAK UP SONNY!' 
  end
end