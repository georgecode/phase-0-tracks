class Santa
  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

  # def initialize()
 def initialize(gender, ethnicity)
    #These things with the @ are attributes
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    p "Initializing Santa instance ..."
  end
end

# test code
# jingles = Santa.new()
# jingles.speak
# jingles.eat_milk_and_cookies("sugar cookie")


#test code
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")


# Add some diverse initializations to your file as driver code
genders =["Cisgender","Androgyne","Nonconforming", "Transpecies"]
ethnicity =["Native Hawaiian", "Native American", "Aboriginal", "Gerald Broflovski(dolphin)"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicity[i])
end

# This is just here to see whats going on
santas.each do |santa|
  p santa
  puts"\n-------------------------\n"
end
