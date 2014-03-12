$indent = 0
def log(block_description, &block)
  space = " " * $indent
  puts "#{space}Starting #{block_description}".rjust($indent)
  $indent += 2
  result = block.call
  $indent -= 2
  puts "#{space}Finished #{block_description}. Returned: #{result}".rjust($indent)
end

log 'addition block' do
  log 'subtraction block' do
    log 'division block' do
      div_number = 28
      div_number/2
    end
    new_number = 39
    9.times { new_number -= 3 }
  end
  number = 3
  number += 5
end