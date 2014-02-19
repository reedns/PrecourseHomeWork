puts 'HI, SONNY!'

while true
  input = gets.chomp
  if input == 'BYE'
    puts 'Bye bye, sonny!'.upcase
      break          
  end

  if input == input.upcase
    puts 'No, not since '.upcase + (rand(1930..1950)).to_s 
  else
    puts 'Huh! Speak up sonny!'.upcase   
  end
  
end