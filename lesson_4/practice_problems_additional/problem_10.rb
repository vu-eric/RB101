def get_age_group(age)
  if (0..17).cover?(age)
    "kid"
  elsif (18..64).cover?(age)
    "adult"
  else
    "senior"
  end
end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |_, traits|
  traits["age_group"] = get_age_group(traits["age"])
end

p munsters
