# Question 3
# my_string = "pumpkins" and my_array = ["pumpkins", "rutabaga"]

# Question 4
# my_string = "pumpkinsrutabaga" and my_array = ["pumpkins"]

# Question 5
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 6
def color_valid(color)
  color == "blue" || color == "green"
end

