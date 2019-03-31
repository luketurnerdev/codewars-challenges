def descending_order(n)
    #...
    
    #firstly we want to have an array of the individual numbers
    # ==> n.to_s
    #then compare each letter of the string to the next one,
    #if it is higher, keep it where it is
    #if it is lower, swap it with the next one

    result = []

    arr = n.to_s.split("")


    i = 0

  temp_var = 0 

      while i < arr.length
        if arr[i].to_i < arr[i+1].to_i
          temp_var = arr[i]
          arr[i] = arr[i+1]
          arr[i+1] = temp_var
          p arr
        else
          p arr
        end
        temp_var = 0
        i+=1

      end

    end

  p descending_order(54612)