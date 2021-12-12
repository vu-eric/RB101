def generate_uuid
  hex = Array('a'..'z') + Array(0..9)
  uuid = "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
  uuid_arr = uuid.chars
  uuid_arr.map {|digit| digit == "-" ? "-" : hex.sample}.join
end

p generate_uuid
