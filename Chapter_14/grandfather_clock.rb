def grandfather_clock(&block)
  time = Time.new.hour
  if time > 12
    time = time - 12
  end
  time.times { block.call }
end

grandfather_clock do
  puts "Dong!"
end