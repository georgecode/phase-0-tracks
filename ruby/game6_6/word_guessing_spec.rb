# :> rspec word_guessing_spec.rb

require_relative 'word_guessing'

describe Guessing_game do
  let(:game) {Guessing_game.new("hello")}

  # it "returns test" do
  #   expect(game.test).to eq "test"
  # end

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

end#describe Guessing_game