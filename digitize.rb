# Convert number to reversed array of digits
# Given a random number:

# C#: long;
# C++: unsigned long;
# You have to return the digits of this number within an array in reverse order.

def digitize(n)
    result = n.to_s.split("").reverse.map(&:to_i)

    #map creates a new array, the & is shorthand for when you just 
    #want to call a method (like to_i)
end

digitize(35321)
#first make n into an array
#then use .reverse? can't on an array
#so then we have to loop through
#for each element i, we can assign it to new_arr[-i]

