flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.find_index {|name| name.start_with?("Be")}

