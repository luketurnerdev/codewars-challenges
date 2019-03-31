#  Our football team finished the championship. The result of
#  each match look like "x:y". Results of
# all matches are recorded in the collection.

# # For example: ["3:1", "2:2", "0:1", ...]

# # Write a function that takes such collection and 
# counts the points of our team in the championship.
#  Rules for counting points for each match:

# # if x>y - 3 points
# # if x<y - 0 point
# # if x=y - 1 point
# # Notes:

# # there are 10 matches in the championship
# # 0 <= x <= 4
# # 0 <= y <= 4

def points(games)
    #..
    #we have an array of match results in the format x:y. 
    # x > y --> 3 points
    # x < y --> 0 points
    # x = y --> 1 point

    #loop through the array indexes
    # on each element, compare the number before the : to the one after
    #add to point counter

    points = 0
    games.each do |match|
        #compare match[0] to match [-1]
        if match[0] > match[-1]
            points +=3
        elsif match[0] == match[-1]
            points +=1
        end

    end
    points
  end

  p points(["1:4", "4:5", "3:2", "1:1"])