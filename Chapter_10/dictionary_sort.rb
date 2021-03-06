puts 'Type as many words as you want.'
puts 'I will sort them alphabetically.'
array = []

while true
  input = gets.chomp
  array.push input
  if input == ''
    array.pop
    break
  end
end

def dict_sort array
  dict_recursive_sort array, []
end
def dict_recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  end
  smallest = unsorted_array.pop
  still_unsorted = []
  unsorted_array.each do |word|
    if word.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = word
    else
      still_unsorted.push word
    end
  end
  sorted_array.push smallest
  dict_recursive_sort still_unsorted, sorted_array
end

puts dict_sort(array)