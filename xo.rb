# # Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

# Examples input/output:

# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false


def XO(str)
    # Method for amount of x's
    # Method for amount of o's
    # Comparison of these amounts ==> return boolean

    x_list = []
    o_list = []
    
    #loop through the letters, add these to an array first?
    # if current index is an x, add it to x_list
    # for x in str.length - scan through then check each letter (index)
    
    for i in 0..str.length do
      if str[i] == "x"or str[i] == "X"
        
        #Add to array

        x_list.push(str[i])
      end
    end

    for i in 0..str.length do
      if str[i] == "o" or str[i] == "o"


        #Add to array

        o_list.push(str[i])
      end
    end

    if (x_list.length == o_list.length)
      return true
    else 
      return false

    end

end

putsXO("ooxx")
putsXO("xooxx")
putsXO("ooxXm") 
putsXO("zpzpzpp")
putsXO("zzoo")