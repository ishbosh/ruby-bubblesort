# Returns a new array with sorted elements.
def bubble_sort(array)
    sorted = Array.new(array)
    sorted.each_with_index do |value, index|
        sorted[index+1] == nil ? next : next_value = sorted[index+1] 
        if value > next_value
            sorted[index] = next_value
            sorted[index+1] = value
        end
        if value <= next_value
            next
        elsif index == sorted.length - 2
            bubble_sort!(sorted)
        end
    end
    sorted
end

# Returns self with elements sorted.
def bubble_sort!(array)
    array.each_with_index do |value, index|
        array[index+1] == nil ? next : next_value = array[index+1] 
        if value > next_value
            array[index] = next_value
            array[index+1] = value
        end
        if value <= next_value
            next
        else index == array.length - 2
            bubble_sort!(array)
        end
    end
    array
end

original = [4,3,78,2,0,2]
sorted = bubble_sort(original)
p "Sorted array: #{sorted}"      # => "Sorted: [0, 2, 2, 3, 4, 78]"
p "Original array: #{original}"  # => "Original: [4, 3, 78, 2, 0, 2]"

bubble_sort!(original)
p "Self Sorted: #{original}"     # => "Self Sorted: [0, 2, 2, 3, 4, 78]"