# :> rspec word_guessing_spec.rb

require_relative 'word_guessing'

describe Guessing_game do
  let(:game) {Guessing_game.new}

  it "returns test" do
    expect(game.test).to eq "test"
  end



end