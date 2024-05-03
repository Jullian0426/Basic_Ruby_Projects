def bubble_sort(array)
  i = 0
  while i < array.length - 1
    array.each_with_index do |number, index|
      if index == array.length - 1
        next
      end

      next_number = array[index + 1]
      if number > next_number
        array[index] = next_number
        array[index + 1] = number
      end
    end
    i += 1
  end
  array
end

print bubble_sort([4,3,78,2,0,2])