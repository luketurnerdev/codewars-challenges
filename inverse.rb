# Given a set of numbers, return the
#  additive inverse of each. Each positive becomes negatives, 
# and the negatives become positives.

def invert(list)
    for i in 0..list.length-1
        list[i] *= -1 unless list[i] == 0
    end
    list
end

p invert([-2,- 3,42, 5, -5, -1231])

#first loop through the list
#if the element is < 0 (negative), we need to make it positive
#we can * by -1?