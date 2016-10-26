puts "How many employees will be processed??"
num_employees = gets.chomp
num_employees = num_employees.to_i

for i in 1..num_employees

  puts("What is your name??")
  name = gets.chomp

  puts("How old are you?")
  age = gets.chomp

  puts("What year were you born?")
  year = gets.chomp

  puts("Our company cafeteria serves garlic bread. Should we order some for you? ")
  garlic_bread = gets.chomp

  puts("Would you like to enroll in the company’s health insurance?")
  insurance = gets.chomp

  # puts("Glad to meet you #{name}.\nYour age #{age} years old.\nYou were born in #{year}.\nYou said #{garlic_bread} to garlic bread.\nYou said #{insurance} to insurance.\nHave a good day!")

  responce = "Results inconclusive."
  age_correct = 2016-age.to_i == year.to_i

  if age_correct && (garlic_bread == "yes" || insurance == "yes")
    responce = "Probably not a vampire."
  end

  if !age_correct && (garlic_bread == "no" || insurance == "no")
    responce ="Probably a vampire."
  end

  if !age_correct &&(garlic_bread == "no" && insurance == "no")
    responce ="Almost certainly a vampire."
  end

  if name == "Drake Cula" || name == "Tu Fang"
    responce ="Definitely a vampire."
  end

  puts "Name any allergies you have, type done when finished"

  allergies = nil

  while allergies != "done"
    allergies = gets.chomp
    if allergies == "sunshine"
      responce ="Definitely a vampire."
      allergies = "done"
    end
  end

  puts"Employee num #{i} is #{responce}"
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."



#Below is just to meet challange requirements needed to demonstrate use of elsif, else, <=, >,
#Release 2 stated "Your program should base its result on the latest condition matched, not the first condition matched. In other words, it's not a "only one condition will apply" sort of scenario." so I used multiable if statements instead if if else
requirements = "---Below is just to meet challange requirements----"
puts requirements
puts requirements
puts requirements

puts "Do you prefer dogs cats or another type of pet"
pet = gets.chomp


if pet == "dogs"
  puts "Dogs are usualy super playful, but sometimes a handful"
elsif pet == "cats"
  puts "Cats are usualy easy, but sometimes not very playful"
else
  puts "Wow thats an intresting choice"
end

puts "How many #{pet} is ideal??"
num_pets = gets.chomp
num_pets = num_pets.to_i
if num_pets <=3
  puts "Sounds like a good number"
elsif num_pets > 3 && num_pets <= 6
  puts "Wow you're a real #{pet} person"
else
  puts "You're a saint thats alot of #{pet}"
end



