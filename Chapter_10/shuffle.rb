puts 'Type as many words as you want and I will shuffle them.'
array = []
while true
  input = gets.chomp
  array.push input
  if input == ''
    array.pop
    break
  end
end

def shuffle array
  shuffle_rec array, []
end
def shuffle_rec unshuffled, shuffled
  if unshuffled.length == 0
    return shuffled
  end 
  still_unshuffled = []
  counter = 0
  random = rand(unshuffled.length)
  unshuffled.each do |word|
    if counter == random
      shuffled.push word
    else
      still_unshuffled.push word
    end
  counter = counter + 1
  end
  shuffle_rec still_unshuffled, shuffled
end

puts shuffle(array)