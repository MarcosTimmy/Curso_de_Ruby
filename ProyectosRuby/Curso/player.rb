require_relative 'game'
class Player   
    def strong?
        health > 100
    end

    attr_accessor :name 
    attr_reader :health

    def initialize(name, health = 100)
        @name = name.capitalize
        @health = health
    end

    def score 
        @health + @name.length
    end

    def blam
        @health -= 10
         puts  " #{ @name } ¡fue blemed!" 
    end
    def w00t
        @health += 15
         puts  " #{ @name } ¡fue w00ted!" 
    end
    def to_s
        "Yo soy #{@name.capitalize} y tengo #{@health} de salud y de puntuacion tiene #{score}"
    end
    def name=(new_name)
        @name = new_name.capitalize
    end
end