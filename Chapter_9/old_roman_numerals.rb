puts 'Enter a number and I will convert it to an old roman numeral'
input = gets.chomp
def old_roman_numeral
  input = gets.chomp.to_i
  numeral =           'M' * (input/1000)
  numeral = numeral + 'D' * (input%1000/500)
  numeral = numeral + 'C' * (input%500/100)
  numeral = numeral + 'L' * (input%100/50)
  numeral = numeral + 'X' * (input%50/10)
  numeral = numeral + 'V' * (input%10/5)
  numeral = numeral + 'I' * (input%5/1)
end

while true
  if input != input.to_i
    puts 'Please enter a number'
  end
  puts old_roman_numeral
  break
end