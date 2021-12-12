def count_occurrences(vehicles)
  vehicles.uniq.each {|vehicle| puts "#{vehicle} => #{vehicles.count(vehicle)}"}
end



