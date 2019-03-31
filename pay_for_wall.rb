#We want to take an input of a neighbor's name (string)
# and return the first 2 letters?

def truncate_names(name)
    new_name = []
    name.length <= 2? new_name.push(name) : new_name.push(name, (name[0] + name[1]))
end

p truncate_names("Luke")