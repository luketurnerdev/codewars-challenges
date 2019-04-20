# # Given a number, write a function to output its reverse digits.
#  (e.g. given 123 the answer is 321)

# # Numbers should preserve their sign; i.e. a negative
# number should still be negative when reversed.

def reverse_number(n)
    #take the digits as an array
    #assign them to a new array in the reverse order
    n = n.to_s
    arr = []
    for i in n.split("")
        arr.unshift(n[i].to_i)
    end
    #account for negative numbers
    n.to_i < 0 ? arr.unshift("-") : nil
    #for some reason a 0 is being added to the end, popping for now
    arr.pop
    return arr.join.to_i
  end


  p (reverse_number(-123))