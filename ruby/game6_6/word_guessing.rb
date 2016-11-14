# :> ruby word_guessing.rb

class Guessing_game

  # def test
  #   "test"
  # end
  def initialize(word)
    @word =word
  end

  def word_input
    @word
  end

  def word_array
    @word.split('')
  end

  def hint
    @word.split("").map{|x| "_ "}
  end

  def push_guess(array, guess)
    array << guess
  end


end#end Guessing_game