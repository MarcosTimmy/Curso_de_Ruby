class Calculador
    # calc = Calculador.new(20, 11)
    def initialize (a, b)
        @a = a 
        @b = b
    end
    def sum 
        @a + @b
    end
    def restar
        @a - @b
    end
    calc = Calculador.new(20, 11)
puts calc.sum
puts calc.restar

end




