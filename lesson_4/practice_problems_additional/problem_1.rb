flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each_with_index {|val, index| flintstones_hash[val] = index}

p flintstones_hash
