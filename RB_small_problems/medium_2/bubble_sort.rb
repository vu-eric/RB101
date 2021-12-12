def bubble_sort!(arr)
  loop do
    swap = false
    tail = arr.size - 2

    (0..tail).each do |index|
      if arr[index] > arr[index + 1]
        swap = true
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
      end
    end

    tail -= 1

    break if swap == false
  end
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
