require 'pry'

puts "Enter a Roman numeral and I will convert it to a number."

def numeral_to_integer(numeral)
  numeral = gets.chomp
  conversions = { M: 1000,  D: 500, C: 100,  L: 50,  X: 10,  V: 5,  I: 1 }
  numbers = 0
  last = 0
  
  numeral.reverse.each_char do |num|
    num_sym = num.to_sym
    values =  conversions[num_sym]
    if values < last
      values *= -1
    else 
      last = values
    end
    numbers += values
  end
  puts numbers
end

puts numeral_to_integer(numeral)
