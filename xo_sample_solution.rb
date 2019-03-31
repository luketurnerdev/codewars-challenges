def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end

# methods used - 
    #1. downcase to convert it to lowercase to account for upper entries
    #2. count to return how many instances of 'x' or 'o' appear in the string