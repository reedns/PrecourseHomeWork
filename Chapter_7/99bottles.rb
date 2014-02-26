beers = 99

while true
  if beers >= 2
    puts beers.to_s + ' bottles of beer on the wall, '
    puts beers.to_s + ' bottles of beer!'
    beers = beers -1
    puts 'Take one down pass it around, ' 
    puts beers.to_s + ' bottles of beer!'
  end
  if beers == 1
    puts beers.to_s + ' bottle of beer on the wall, '
    puts beers.to_s + ' bottle of beer!'
    puts 'Take one down pass it around,'
    puts 'no more bottles of beer!' 
    break
  end
end