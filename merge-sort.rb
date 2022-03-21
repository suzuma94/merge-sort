def merge_sort(array)

    if array.size < 2
        return array
    end
    array = array.each_slice((array.length / 2.0).round).to_a 
    array = array.map do |element|  
        merge_sort(element) 
    end
    merge(array) 
end

def merge(array)
    array = array.flatten
    array = array.sort
end

 array = []
 rand(200).times do
    array << rand(200)
 end

 p merge_sort(array)