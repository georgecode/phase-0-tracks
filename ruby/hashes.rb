#pseudocode
#create an empty hash
# gets.chop user input and add it to the hash as a key and value
#set user input to the correct data type
#print the hashes to screen
#display info for user
#prompt for update if they want to update update else print out final hash
#close program and "Have a great day"

user_responce = {}
#get user input
puts "Whats the clients name?"
user_responce[:client_name] = gets.chomp

puts "Whats the clients age?"
user_responce[:client_age] = gets.chomp.to_i

puts "How many kids do they have?"
user_responce[:num_kids] = gets.chomp.to_i


puts "What type of decor theme do they want?"
user_responce[:decor_theme] = gets.chomp

puts "Do they have pets yes/no?"
user_responce[:pets] = gets.chomp
if user_responce[:pets] == "yes"
  user_responce[:pets] = true
else
  user_responce[:pets] = false
end

puts "Whats their favorite color?"
user_responce[:fav_color] = gets.chomp

#display input
p user_responce
puts "\nClient Info\n
client_name = #{user_responce[:client_name]}
client_age = #{user_responce[:client_age]}
num_kids = #{user_responce[:num_kids]}
decor_theme = #{user_responce[:decor_theme]}
pets = #{user_responce[:pets]}
fav_color =#{user_responce[:fav_color]}\n
Would you like to update anything? If not type no."

# add or skip updateing info
update = gets.chomp
if update == "no"
  puts "\nGreat we'll keep that info as is!"
else
  puts "What would you like to update?"
  to_update = gets.chomp
  puts "What is the new value for #{to_update}?"
  new_value = gets.chomp

  if to_update == "client_age" || to_update == "num_kids"
    new_value = new_value.to_i
  elsif new_value == "true"
    new_value = true
  elsif new_value =="false"
     new_value = false
  end

  user_responce[to_update.to_sym] = new_value
end

#Display data final time
p user_responce
puts "\nYour Client Info Is\n
client_name = #{user_responce[:client_name]}
client_age = #{user_responce[:client_age]}
num_kids = #{user_responce[:num_kids]}
decor_theme = #{user_responce[:decor_theme]}
pets = #{user_responce[:pets]}
fav_color =#{user_responce[:fav_color]}\n
Have a great Day!"

puts "\n-------------Below is Array code--------------\n"
#We were asked to create a simple form and the most pragmatic way to do so is with hashes so I did it that way. However I just read the Criteria and aparently we are graded on use of arrays so below is just code to meet requirenments of this assignments.

# create an array and add objects to it
dog_types =["Labrador Retriever", "Mean Dog"]
dog_types << "Yorkshire Terrier"
dog_types << "German Shepherd"
dog_types << "Golden Retriever"
dog_types << "Golden Retriever"
dog_types << "Beagle"
dog_types << "Dachshund"
dog_types << "Boxer"
dog_types << "Shih Zoo"
dog_types << "Border Terrier"
#Tzu
p dog_types
puts " "

# added two Golden Retriever's so I will delete one by it's index
dog_types.delete_at(4)
p dog_types
puts " "

#Shih Tzu had a spelling error so I will fix that
dog_types[8] = "Shih Tzu"
p dog_types
puts " "

#The mean dog was fighting with the other dogs so he has to leave
dog_types.delete("Mean Dog")
p dog_types
puts " "

#the list is too long so i will delete the most recently added dog
dog_types.delete_at(-1)
p dog_types

