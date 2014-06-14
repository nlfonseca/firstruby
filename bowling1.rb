class Bowling
	def initialize
		@rolls= Array.new 21, 0
		@current_roll = 0
	end

	def roll(pins)
		@rolls[current_roll] = pins
		@current_roll += 1
	end

	def score
		score = 0
		frame_index = 0
		
		1.upto(10) |frame| 
			if strike?(frame_index)
				score += 10 + @rolls[frame_index +1] + @rolls[frame_index + 2]
			if spare?(frame_index) 
				score += 10 + @rolls[frame_index + 2]
			else
				score += @rolls[frame_index] + @rolls[frame_index + 1]
				frame_index += 2
			end
		end

		score
	end

	private
	def strike?(frame_index)
		@rolls[frame_index] == 10
	def spare?(frame_index)
		@rolls[frame_index]+ @rolls[frame_index]
	end
end