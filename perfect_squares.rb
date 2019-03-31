# Task

# Given an integral number, determine if
#  it's a square number:

# In mathematics, a square number or perfect
#  square is an integer that is the square of an integer;
#   in other words, it is the product of some integer with itself.

# The tests will always use some integral number, 
# so don't worry about that in dynamic typed languages.

def is_square(x)
    square_found = false
    #we need to find out if a number can multiply by itself to make x.
    #if y is the integer to check
    #we should loop through all numbers from 0 to x, and times current index by itself. if that == x, return true

    #make an array of numbers?
    num_list = []
    #populate list
    i = 0
    while i <= x
        num_list.push(i)
        i+=1
    end
    #loop through list and check for squares
    
    for num in num_list
        if num ** 2 == x
            square_found = true
        end
    end

    square_found

end

puts is_square(0)
puts is_square(4)

