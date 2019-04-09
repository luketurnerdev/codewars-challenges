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
    p str.split("").map
    # arr = []
    # i = 0 
    # while i < str.length
    #     #populate list
    #     arr.push([str[i],str.count(str[i])])
    #     i+=1
    # end
    # arr.uniq!.sort
end

p ordered_count('abracadabra')