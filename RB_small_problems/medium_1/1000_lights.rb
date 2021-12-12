def turned_on_lights(switches)
  switch_state = Hash.new(false)
  (1..switches).each do |step|
    (step..switches).step(step).each do |switch|
      switch_state[switch] = !switch_state[switch]
    end
  end
  switch_state.select {|_, state| state == true}.keys
end

p turned_on_lights(1000)
