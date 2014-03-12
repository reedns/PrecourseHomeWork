birthdays = {}

File.read('birthdays.txt').each_line do |text|
  index = text.index(',').to_i
  name = text.slice(0..index).chop
  date = text.slice(index+1..-1).strip
  birthdays[name] = date
end 

puts "Who's birthday would like to know"
name = gets.chomp
puts "I dont' know their birthday." if birthdays[name] == nil

puts birthdays[name]
