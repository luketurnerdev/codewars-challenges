# Jaden Smith, the son of Will Smith, is the star of films such 
# as The Karate Kid (2010) and After Earth (2013). Jaden is also known for some
#  of his philosophy that he delivers via Twitter. When writing on Twitter, 
#  he is known for almost always capitalizing every word.


# # Your task is to convert strings to how they would be written by Jaden Smith. 
# # The strings are actual quotes from Jaden Smith, but they are not capitalized 
# # in the same way he originally typed them.

#Look at the string, and identify spaces. The next character should be capitatlized

def jaden_case()
    #Make str into an array

    str.split("")

    #Loop through array

    for i in 0..str.length
        if str[i] == " "
            str[i+1] = str[i+1].to_s.capitalize
            
        end
    end

    str
end

p jaden_case("This is a string")

str = "This is a string"
str.jaden_case