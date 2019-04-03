# Complete the solution so that it returns true if the first 
# argument(string) passed in ends with the 2nd argument (also a string).

# Examples:

# solution('abc', 'bc') # returns true
# solution('abc', 'd') # returns false

def solution(string, ending)
    # if string ends in ending, return true
    #else return false
    #we may want to look at the last several characters of string
    #maybe first get the length of ending (eg: 3)
    # loop through ending.length times,
    #   then check ending [-1] against string [-1], then -2 against -2 etc
     

    i = ending.length
    count = 0 
    while i > 0
        if string[-i] == ending[-i]
            count +=1
        end
        i-=1
    end
    if count == ending.length
        return true
    else   
        return false
    end
    
end

p solution("abc", "bc")