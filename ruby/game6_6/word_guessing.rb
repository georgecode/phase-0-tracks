# :> ruby word_guessing.rb

class Guessing_game
  attr_reader :word
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

  ###change to array_guesses
  def repeat_checker(array,guess)
    array.include?(guess)
      # a = [ "a", "b", "c" ]
      # a.include?("b")   #=> true
  end

  # def limit_met(limit,array)
  #   if limit >= array.length
  #     false
  #   else
  #     true
  #   end
  # end

  def final_message(limit,user_guess)
    if limit != 0
      p "YOU LOSE! Better luck next time"
    else
       p "You guessed #{user_guess} you're correct!!"
    end
  end

end#end Guessing_game


#driver code
def player_one_prompt
  puts "Type the word you want your opponent to guess and hit enter"
  zword = gets.chomp
  game = Guessing_game.new(zword)
  game
end

game = player_one_prompt()

#game = Guessing_game.new("xxxhellox")

#game = Guessing_game.new("xxxhellox")
# puts game.word
# guess.print_word
# p game.hint



#def set_constants(game)
  limit = game.guess_limit
  array_guesses =[]
  word = game.word_array
  hint = game.hint
#end

#set_constants(game)





# while game.limit_met(limit,array) == false
while limit > array_guesses.length

  puts "Guess the word or a letter"

  puts hint.join('')

  user_guess = gets.chomp

  if user_guess == word.join('')
      limit = 0
  else
    unless game.repeat_checker(array_guesses,user_guess)
      game.add_letter(word,user_guess,hint)
      array_guesses<<user_guess
      end#end unless
      try_left = limit-array_guesses.length
      puts "\nNumber of trys left #{try_left}"
  end#end if else
end#end while
game.final_message(limit,user_guess)
