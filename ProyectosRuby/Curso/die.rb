require_relative 'player'
require_relative 'game'

class  Die 
    attr_reader :number
    def initialize
        roll
    end
    
    def roll
    @number = rand(1..6)
    end
end