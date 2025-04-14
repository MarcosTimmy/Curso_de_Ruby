class Project
def initialize(name, funding, target_funding)
    @name = name
    @funding = funding
    @target_funding = target_funding
    # @tiempo_actual = tiempo_actual

end

# def tiempo
#     @tiempo_actual = Time.new
#     formatted_time = @tiempo_actual.strftime("%A %m/%d/%y at %I:%M%p")
# end
def to_s 
    "#{@name} tiene en fondo #{@funding} para alcanzar su meta de #{@target_funding}"
end

def remove 
    @funding -= 15
    "#{@name} pierde fondos!"
end
def add
    @funding += 25
    "#{@name} gana fondos!"
end

# time_actual = Time.new
# formatted_time = time_actual.strftime("%A %m/%d/%y at %I:%M%p")
# puts "montos de financiacion apartir de #{formatted_time}"

end

project1 = Project.new( "Proyecto ABC", 500, 1000)
puts project1
project2 = Project.new("Proyecto LMN", 1500, 750)
puts project2
project3 = Project.new("Proyecto XYZ", 55, 150)
puts project3
project4 = Project.new("Proyecto EFG", 60, 125)

puts "***"
project1.remove
project2.add
project3.remove
project4.remove
puts "***"

puts project1
puts project2
puts project3
puts project4
=begin
puts "#{project1} hay $#{funding1} en fondo"
puts "#{project1.capitalize} hay $#{funding1} en fondo"
puts "#{project2.upcase} hay $#{funding2} en fondo"
puts "#{project3.ljust(30, '.')} $#{funding3} en fondo"

puts "Proyectos: \n\t Proyecto ABC \n\t Proyecto LMN \n\t Proyecto XYZ"

time_actual = Time.new
formatted_time = time_actual.strftime("%A %m/%d/%y at %I:%M%p")
puts "montos de financiacion apartir de #{formatted_time}"
=end

 
