# Count the number of occurrences of each
#  character and return it as a list of 
#  tuples in order of appearance.

# Example:

# ordered_count("abracadabra") == 
# [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]

#loop through list 
#for each unique character in the list, loop the rest of list
# and see if it appears
#count how many times it does.

#only push if count < 1?
        #we only want to push the new subarray if its not already in there
        #then we can .sort

def ordered_count(str)
    arr = []
    i = 0 
    while i < str.length
        #populate list
        arr.push([str[i],str.count(str[i])])
        i+=1
    end

    # if arr.uniq! == nil
    #     p 'no repeated elements'
    # end
    # if arr.uniq != nil
    #     'not nill'
    # else
    #     return nil
    # end
    arr.uniq!
    arr
end


p ordered_count("abracadabra")
p ordered_count("codewars")

# [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]