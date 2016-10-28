puts "What is your hamster's name?"
hamster_name = gets.chomp

puts "On a scale of 1 to 10 how loud is your hamster?"
noise_level = gets.chomp
noise_level = noise_level.to_i

puts "What color fur does hamster have?"
hamster_color = gets.chomp

puts "Is this an adoptable hamster, yes or no?"
adoptable = gets.chomp
if adoptable == "yes"
  true
elsif adoptable == "no"
  false
end

puts "How old is your hamster?"
hamster_age = gets.chomp

if  hamster_age == ""
  hamster_age = nil
else
  hamster_age = hamster_age.to_i
end

puts "Thank you for your input, we are happy to accept #{hamster_name} in to the program!
\n Loudness level is #{noise_level}
\n Fur color is #{hamster_color}
\n Is this an adoptable hamster, #{adoptable}!
\n Age of hamster is #{hamster_age}
\n Thank You!"