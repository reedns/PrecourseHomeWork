# Ask what day/month/year born
puts "What year were you born?"
birthyear = gets.chomp
puts "What month were you born(1-12)?"
birthmonth = gets.chomp
puts "What day were you born?"
birthday = gets.chomp

birthday_time = Time.local(birthyear, birthmonth, birthday)

age_seconds = Time.new - birthday_time

age = (age_seconds / 60 / 60 / 24 / 365.25).to_i

puts "You get #{age} spanks!"