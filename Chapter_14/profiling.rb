def profile(block_description, &block)
  profile_on = true
  if profile_on == true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}:  #{duration} seconds"
  end
end

profile '25000 doublings' do
  number = 1
  25000.times { number = number + number}
  puts "#{number.to_s.length} digits"
end

profile 'count to a million' do
  number = 0
  1000000000.times { number = number + 1 }
end 