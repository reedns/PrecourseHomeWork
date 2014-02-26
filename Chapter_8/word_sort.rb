puts 'Type in as many words as you would like.  Press enter when finished.'
words = []
input = ' '  
while input != ''
  input = gets.chomp
  words.push input
end

words.pop
puts words.sort
