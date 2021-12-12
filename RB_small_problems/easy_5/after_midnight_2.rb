def after_midnight (time)
  time_arr = time.split(":")
  time_arr.map!{|num| num.to_i}
  (time_arr[0] * 60 + time_arr[1]) % (24 * 60)
end

def before_midnight (time)
  minutes = (24 * 60) - after_midnight(time)
  minutes = 0 if minutes == 24 * 60
  minutes
end
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
