require_relative 'bowling'

describe Bowling do
	it 'scores a gutter game' do
		bowling = Bowling.new

		roll_many(20, 0, bowling)
		# 1.upto(20) do |num|
		# 	game.roll 0
		# end

		expect(bowling.score).to eq 0
	end

	it 'scores a game with all ones' do 
		bowling = Bowling.new

		roll_many(20, 1, bowling)
		# 1.upto(20) do |num|
		# 	game.roll 1
		# end

		expect(game.score).to eq 20
	end

	it 'scores a game with one spare' do 
		bowling = Bowling.new

		game.roll 5
		game.roll 5
		game.roll 3
		roll_many(17, 0, bowling)

		expect(bowling.score).to eq 16


	
end


def roll_many(number_of_rolls)