def pangram?(string)
    list = ('a'..'z').to_a.each.map{|letter| string.downcase.include?(letter) ? true : false }
    list.include?(false) ? false : true
end

#we can scan the string and use regex to check if a particular letter contains 

#the string must satisfy a list of all letters A-Z.
#what kind of data structure should we use?
#we can create an array that has all the letters of the alphabet

#iterate through string

p pangram?("The Quick Brown Fox Jumps Over The Lazy Dog")
p pangram?("abcd")






# A pangram is a sentence that contains every single letter of
#  the alphabet at least once. For example, the sentence "The
#   quick brown fox jumps over the lazy dog" is a pangram, because 
#   it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return
#  True if it is, False if not. Ignore numbers and punctuation.