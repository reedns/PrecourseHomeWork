Dir.chdir ​'C:/Documents and Settings/Katy/PictureInbox'​
​
pic_names = Dir[​'F:/**/*.jpg'​]
puts ​'What would you like to call this batch?'​
batch_name = gets.chomp
puts
print ​"Downloading ​#{pic_names.length}​ files:  "​
pic_number = 1

pic_names.each ​do​ |name|
  print ​'.'​  ​#  This is our "progress bar".​
  new_name = ​if​ pic_number < 10
    ​"​#{batch_name}​0​#{pic_number}​.jpg"​
  ​else​
    ​"​#{batch_name}#{pic_number}​.jpg"​
  ​end​“

  while file.exist?(new_name) == true
    puts "#{new_name} already exists, would you like to overwrite(y or n)?"
    response = gets.chomp
    if !["y", "n"].inclue?(response)
      puts "Please responde y or n"
      next
    if response == "y"
      File.rename name, new_name
      break
    else
      exit
    end
  end

  File.rename name, new_name

  pic_number = pic_number + 1
​end​

puts