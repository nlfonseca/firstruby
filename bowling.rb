puts "The Game is ON!";

class Bowling

    attr_reader :final_score

    def initialize()
        @final_score = Array.new
    end

    def roll(num)
        @final_score.push num
        puts num
    end

    def score
        puts "number of rolls: #{@final_score.length}"
        sum = @final_score.inject(:+)
        puts "score: #{sum}"
    end
end

b = Bowling.new
b.roll 5
b.roll 4
b.roll 2
b.roll 5
b.roll 4
b.roll 3
b.score