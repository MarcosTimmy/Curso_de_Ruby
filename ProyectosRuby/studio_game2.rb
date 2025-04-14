def say_hello(name, health = 100)
    puts "Yo soy #{name.capitalize} y tengo #{health} de salud apartir de las  #{tiempo}"

end

def tiempo
    tiempo_actual = Time.new
    tiempo_actual = tiempo_actual.strftime("%I:%M%S %p")
    # puts "montos de financiacion apartir de #{formatted_time}"
end



say_hello("larry", 60)
say_hello("curly", 50)
say_hello("moe")
say_hello("shemp", 150)



# puts say_hello("Moe")