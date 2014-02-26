line_width = 60
toc = [['Chapter 1: Getting started', 'Page  1'],
      ['Chapter 2: Numbers', 'Page  9',],
      ['Chapter 3: Letters', 'Page 13']]

puts 'Table of Contents'.center(line_width)

toc.each do |table|
  puts table[0].ljust(line_width/2)
  puts table[1].rjust(0)
end