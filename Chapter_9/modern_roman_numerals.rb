puts 'Enter a number and I will convert it to an modern roman numeral'

def modern_roman_numeral
  input = gets.chomp.to_i
  hund = input%1000/100
  ten = input%100/10
  one = input%10
  
  numeral =           'M' * (input/1000)
  numeral = numeral + 'D' * (input%1000/500)
  if hund == 9
    numeral = numeral + 'CM'
  elsif hund == 4
    numeral = numeral + 'CD'
  else
  numeral = numeral + 'C' * (input%500/100)
  end
  if ten == 9
    numeral = numeral + 'XC'
  elsif ten == 4
    numeral = numeral + 'IX'
  else
    numeral = numeral + 'L' * (input%100/50)
    numeral = numeral + 'X' * (input%50/10)
  end
  if one == 9
    numeral = numeral + 'IX'
  elsif one == 4
    numeral = numeral + 'IV'
  else 
    numeral = numeral + 'V' * (input%10/5)
    numeral = numeral + 'I' * (input%5/1)
  end
end  

input = gets.chomp
while true
  if input != input.to_i
    puts 'Please enter a number'
  end
  puts modern_roman_numeral
  break
end