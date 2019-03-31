# Given an array of integers, remove the smallest value.
#  Do not mutate the original array/list. 
#  If there are multiple elements with the same value,
#  remove the one with a lower index. If you get an empty array/list,
#  return an empty array/list.

# Don't change the order of the elements that are left.

def remove_smallest(numbers)
    smallest = 0
    i = 0
    while i < numbers.length-1
        if numbers[i] < numbers[i+1]
            smallest = numbers[i]
      
        end

        p smallest

        # p numbers[i+1]


        i+=1
 
    end

    numbers.delete(smallest)
    numbers

end

p remove_smallest([1,2,3,4,6,3]) #Should remove 1.

#Look through the array for the smallest item
#start with first element, and if this is smaller than the next element, mark it as the smallest
#then check if i+1 is smaller than 'smallest'
#remove this item