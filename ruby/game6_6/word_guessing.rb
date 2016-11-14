# :> ruby word_guessing.rb

class Guessing_game
  attr_reader :word

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
      end
      count += 1
    end #end word.map
    hint
  end #end add_letter

  def guess_limit
    (@word.length / 2.to_f).ceil
  end

  def repeat_checker(array,guess)
    array.include?(guess)
  end

  def final_message(limit,user_guess)
    if limit != 0
      p "YOU LOSE! Better luck next time"
    else
       p "You guessed #{user_guess} you're correct!!"
    end
  end

end#end Guessing_game class




#Method for player one
def player_one_prompt
  puts "Type the word you want your opponent to guess and hit enter"
  zword = gets.chomp
  game = Guessing_game.new(zword)
  game
end


# Method for player 2
def player_two_guess(game,limit, array_guesses,word,hint)
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
        end

        try_left = limit-array_guesses.length

        puts "\nNumber of trys left #{try_left}"
    end#end if else
  end#end while
  game.final_message(limit,user_guess)
end#player_two_guess

# Sets games variables
  game = player_one_prompt()
  limit = game.guess_limit
  array_guesses =[]
  word = game.word_array
  hint = game.hint

#driver code
player_two_guess(game,limit, array_guesses,word,hint)