# Given a string str, reverse it omitting all non-alphabetic characters.

# Example
# For str = "krishan", the output should be "nahsirk".

# For str = "ultr53o?n", the output should be "nortlu".

# Input/Output
# [input] string str

# A string consists of lowercase latin letters, digits and symbols.

# [output] a string

def reverse_letter(str)
    #we need to take str, use reverse method, then delete all non letters
    result = str.reverse
    #loop through and delete using regex?
    i = 0
    while i < result.length
        if result[i].
        i+=1
    end

end

p reverse_letter("abcdef")
p reverse_letter("123Abc")