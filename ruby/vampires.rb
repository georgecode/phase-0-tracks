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

  puts responce

  puts"Employee num #{i} is #{responce}"
end






# responce = "no vamp"
# puts "Name any allergies you have, type done when finished"
# allergies = nil
# while allergies != "done"
#   allergies = gets.chomp
#   if allergies == "sunshine"
#     responce ="Definitely a vampire."
#     allergies = "done"
#   end
# end
# puts responce





