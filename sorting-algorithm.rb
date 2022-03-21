def sorting_algorithm(array)
    x = 0
    y = 0
    z = []
    until(x == array[0].length && y == array[1].length)
    
        if(array[0][x] != nil && array[1][y] != nil && comp = array[0][x] <=> array[1][y])
            if comp == -1
                z.push(array[0][x])
                x += 1
            elsif comp == 1
                z.push(array[1][y])
                y += 1
            elsif comp == 0
                z.push(array[0][x])
                z.push(array[1][y])
                x += 1
                y += 1
            end
        else
            if(array[0][x] == nil && array[1][y] != nil)
                z.push(array[1][y])
                y += 1  
            elsif(array[1][y] == nil && array[0][x] != nil)
                z.push(array[0][x])
                x += 1
            end
        end        
    end
   return z
end

array = [[1,3,4,5,6,7], [2,4,6,8,10,12]]


p sorting_algorithm(array)