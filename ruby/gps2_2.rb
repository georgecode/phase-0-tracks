# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:create an empty hash
  # add a create list method(food_str)
  # .split it
  # set default to 1 test 0 too
  #loop through list
  # print the list to the console [can you use one of your other methods here?] print hash
# output: [hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item food_str, and qty_num
# output: updated hash

# Method to remove an item from the list
# input: food_str
# steps: delete food_str
# output: updated hash

# Method to update the quantity of an item
# input: food_str qty_num
# steps: override qty
# output:updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: loop make pretty
# output: updated hash



def create_list(list_str)
  food_list = {}
  list_array=list_str.split(" ")
  default_qty = 1
  list_array.each do |food|
  food_list[food.to_sym] = default_qty
  end
  food_list
end




# drive code
food_list = create_list("")

#p food_list

def add_item(food_list, new_food, qty_num = 1)
  food_list[new_food.to_sym] = qty_num
  food_list
end

def remove_item(food_list, food_remove)
  food_list.delete(food_remove.to_sym)
  food_list
end

def update_item(food_list, food, qty_num)
  food_list[food.to_sym] = qty_num
  food_list
end

def pretty_list(food_list)
  food_list.each do |food, qty|
    puts "#{food}: #{qty}"
  end
end

add_item(food_list, "lemonade", 2)
add_item(food_list, "tomatoes", 3)
add_item(food_list, "onions", 1)
add_item(food_list, "ice cream", 4)
remove_item(food_list, "lemonade")
update_item(food_list, "ice cream", 1)
pretty_list(food_list)



# What did you learn about pseudocode from working on this challenge?
#It's a goldilocks art form not too little not too much

# What are the tradeoffs of using arrays and hashes for this challenge?
# We techinically used both .split(" ") created an array and we stored the data
# in a hash from there, so we got the best of both worlds

# What does a method return?
# The last result before it's end

# What kind of things can you pass into methods as arguments?
# variables, strings, boolens, and numbers

# How can you pass information between methods?
# In this exercise we passed a method into another method by
# saving the method to be passed as a variable

# What concepts were solidified in this challenge, and what concepts are still confusing?
# The coolest thing I learned in this challange was the abilty to set a default to a parameters.
# I wouldn't say im confused about anything more like disapointed in ruby for not
# letting me access a hash outside of a method and the flunkyness of explicit return
# (the more i get to know ruby, the fonder i become of javascript)



