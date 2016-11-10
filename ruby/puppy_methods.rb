# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(num)
#     num.times {puts "Woof!"}
#   end

#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(num)
#     num * 7
#   end

#   def eat(num)
#     puts "Eats #{num} of meals a day!"
#   end

#   def initializ
#     puts "Initializing new puppy instance ..."
#   end

# end

# #driver code
# fluffy = Puppy.new

# fluffy.fetch("bone")
# fluffy.speak(3)
# fluffy.roll_over
# p fluffy.dog_years(10)
# fluffy.eat(4)

class Guitars

  def sing(sound)
    puts "Guitar goes #{sound}"
  end

  def price()
    puts "This guitar is really expensive, you are now broke!"
  end

  def initialize
    puts "Initializing new guitar instance ..."
  end

end

fender = Guitars.new

count = 0

guitars = []
while count < 51
  guitars << Guitars.new
  count += 1
end


# fender.sing("lalalala...")
# fender.price

guitars.each do |guitar|
  puts "\n--------------"
  guitar.sing("lalalala...")
  guitar.price
end
