# # This time no story, no theory. The examples below show you how to write function accum:

# # Examples:

# # accum("abcd") -> "A-Bb-Ccc-Dddd"
# # accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# # accum("cwAt") -> "C-Ww-Aaa-Tttt"
# # The parameter of accum is a string which includes only letters from a..z and A..Z.

def accum(s)
    result = ""
    i = 0
    count = 0
    while i < s.length
        s[i] = s[i].downcase

       


        result << s[i] 
        result << s[i] * i
        #add a hyphen unless it's the last one
        result << "-" unless s[i] == s[-1]
        #capitalize character after hyphen
        

        i+=1
    end
    while count < result.length
        if result[count] == "-"
            result[count+1] = result[count+1].capitalize
        end
        count +=1
    end
    
    result[0] = result[0].capitalize
    result
end

p accum("NyffsGeyylB")
