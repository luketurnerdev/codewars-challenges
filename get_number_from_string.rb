# Write a function which removes from string all non-digit characters and parse the remaining to number. E.g: "hell5o wor6ld" -> 56

#23.2 -  Currently loops through incorrectly .. seems to think some letters are digits

def get_number_from_string(s)

    #loop through characters in the string
    #replace non-digits with ""
    #convert the rest with "string".to_i
    puts "Length of s: #{s.length}"
    for i in 0..s.length do
       if s[i] =~ /[a-zA-Z]/
            s.slice! s[i]
       else
            puts 'is a digit'


        end   
        
    
               
        

    end

    return s
end

puts get_number_from_string("abc123")