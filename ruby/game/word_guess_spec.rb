require_relative 'word_guess'

describe Game do
	let(:game) { Game.new('apple')}


  it "prints current status of game" do
    expect(game.current_status).to respond_to(:current_status)
  end

  it "guess a single letter or word" do
    expect(game.take_a_guess).to cover('apple')
  end

  it "give how many guess are left" do
    expect(game.limited_guess('k')).to eq(4)
  end
end