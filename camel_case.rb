# Write simple .camelCase method (camel_case function in PHP, CamelCase in C# or camelCase in Java) for strings.
# All words must have their first letter capitalized without spaces.

# For instance:

# 'hello case'.camelcase => HelloCase
# 'camel case word'.camelcase => CamelCaseWord



#22.2 - this code works, but I need to make it a part of a class so it can be used like 'string'.camelcase... google this

#23.2 - fixed it by putting it within the String class, so that it can be called in the format:
#   "String".camelcase.

#    Also fixed the test case with a space at the end, by changing the char to a space
#    unless it is the last character.
class String
    def camelcase()

        #capitalize first char
        self[0] = self[0].upcase

        for i in 0..self.length do
            if self[i] == " "


                
            #remove space
            self[i] = ""

            #capitalize new word, using i instead of i+1 as there
            #are now less characters due to space deletion

            self[i] = self[i].upcase unless i == self.length

            


                
                
            end


            
        end
    
    
    return self
    end

end



puts "space at the end ".camelcase


