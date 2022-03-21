def sorting_algorithm(array)
    arary_left = array[0]
    array_rigth = array[1]
    x = 0
    y = 0
    z = []
    until(x == array[0].length && y == array[1].length)
    
        if (arary_left[x] != nil && array_rigth[y] != nil && comp = arary_left[x] <=> array_rigth[y])
            if comp == -1
                z.push(arary_left[x])
                x += 1
            elsif comp == 1
                z.push(array_rigth[y])
                y += 1
            elsif comp == 0
                z.push(arary_left[x])
                z.push(array_rigth[y])
                x += 1
                y += 1
            end
        else
            if (arary_left[x] == nil && array_rigth[y] != nil)
                z.push(arary_left[y])
                y += 1  
            elsif (array_rigth[x] != nil && arary_left[y] == nil)
                z.push(array_rigth[x])
                x += 1
            end
        end        
    end
   return z
end

array = [[1,3,4,5,6,7], [2,4,6,8,10,12]]


p sorting_algorithm(array)