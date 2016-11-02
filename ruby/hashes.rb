#pseudocode
#create an empty hash
# gets.chop user input and add it to the hash as a key and value
#set user input to the correct data type
#print the hashes to screen
#display info for user
#prompt for update if they want to update update else print out final hash
#close program and "Have a great day"

user_responce = {}
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

p user_responce
puts "\nClient Info\n
client_name = #{user_responce[:client_name]}
client_age = #{user_responce[:client_age]}
num_kids = #{user_responce[:num_kids]}
decor_theme = #{user_responce[:decor_theme]}
pets = #{user_responce[:pets]}
fav_color =#{user_responce[:fav_color]}\n
Would you like to update anything? If not type no."

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

p user_responce
puts "\nYour Client Info Is\n
client_name = #{user_responce[:client_name]}
client_age = #{user_responce[:client_age]}
num_kids = #{user_responce[:num_kids]}
decor_theme = #{user_responce[:decor_theme]}
pets = #{user_responce[:pets]}
fav_color =#{user_responce[:fav_color]}\n
Have a great Day!"

