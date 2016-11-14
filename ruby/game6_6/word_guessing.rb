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

  def add_letter(word,guess,hint)
    count = 0
    word.map do |letter|
      if letter == guess
        hint[count]= letter
        # p under_scores
      end
      count += 1
    end #end word.map
    hint
  end #end add_letter

  def guess_limit
    (@word.length / 2.to_f).ceil
  end

  def limit_met(limit,array)
    if limit >= array.length
      false
    else
      true
    end
  end

  def final_message(limit,user_guess)
    if limit != 0
      p "YOU LOSE! Better luck next time"
    else
       p "You guessed #{user_guess} you're correct!!"
    end
  end

end#end Guessing_game