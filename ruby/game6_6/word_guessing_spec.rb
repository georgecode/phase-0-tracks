# :> rspec word_guessing_spec.rb

require_relative 'word_guessing'

describe Guessing_game do
  let(:game) {Guessing_game.new("hello")}


  it "returns word" do
    expect(game.word_input).to eq "hello"
  end


  it "returns an array of the word" do
    expect(game.word_array).to eq ["h","e","l","l","o"]
  end


  it "returns an array of the word hint" do
    expect(game.hint).to eq ["_ ","_ ","_ ","_ ","_ "]
  end


  it "pushes guess to an array" do
    test_array = ["test"]
    expect(game.push_guess(test_array,"foo")).to eq ["test","foo"]
  end


  it "up dates word hint with guess" do
    word = ["f","o","o","b","a","r"]
    hint = ["_","_","_","_","_","_"]
    guess = "o"
    expect(game.add_letter(word,guess,hint)).to eq ["_","o","o","_","_","_"]
  end


  it "returns guess limit" do
    expect(game.guess_limit).to eq 3
  end


  it "returns true or false for repeated words" do
    array_guesses= ["a","b","c"]
    expect(game.repeat_checker(array_guesses,"b")).to eq true
  end


  it "returns the final message" do
    expect(game.final_message(0,"hello")).to eq "You guessed hello you're correct!!"
  end


end#end describe Guessing_game