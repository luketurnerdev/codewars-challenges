class String
    def camelcase
      self.split.map(&:capitalize).join
    end
  end

  # In this example, the split method is used to split the string,
  # separating it by whitespace into an array, with one element for 
  # each word.

  # map with the argument of &capitalize means that every element in the
  # array is capitalized in the first letter.

  # Finally, join brings all the elements of the index together as a string
  # i.e., [1,2,3].join ==> "123"


