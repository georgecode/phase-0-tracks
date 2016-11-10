# to use require_relative 'shout'
# to see methods Shout.singleton_methods

module Shout
  def self.yell_angrily(words)
  words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end

end

puts Shout.yell_angrily("Mucking work")
puts Shout.yell_happily("I can't belive that worked first try!!")