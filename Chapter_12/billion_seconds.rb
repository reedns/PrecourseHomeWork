birthdate = Time.local(1982, 11, 4, 6, 01)
time_now = Time.new

time_elapsed = time_now - birthdate

seconds_to_go = 1000000000 - time_elapsed

one_billion_seconds = time_now + seconds_to_go

puts one_billion_seconds