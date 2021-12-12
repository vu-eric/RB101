def buy_fruit(fruits)
  fruits.each_with_object([]) do |fruit_arr, arr|
    fruit_arr[1].times do
      arr << fruit_arr[0]
    end
  end
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
