def bubble_sort(array)
    array.each_with_index do |value, index|
        array[index+1] == nil ? next : next_value = array[index+1] 
        if value > next_value
            array[index] = next_value
            array[index+1] = value
        end
        if value <= next_value
            next
        else
            bubble_sort(array)
        end
    end
end

arr = [4,3,78,2,0,2]
bubble_sort(arr)
p arr