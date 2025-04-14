class Project

  attr_accessor :name
  attr_reader :funding, :target

  def initialize(name,  funding=0, target_funding_amount)
    @name = name
    @target = target_funding_amount
    @funding = funding
  end
  
  def to_s
    "#{@name} tiene en fondo #{@funding} para alcanzar su meta de #{@target}." 
  end

  def remove_funds
    @funding -= 15
    puts "#{@name} Pierde fondos!"
  end

  
  def add_funds
    @funding += 25
    puts "#{@name} gana fondos!"
  end
  
  def total_funding_outstanding
    @target - @funding
  end
  
  def fully_funded?
    total_funding_outstanding <= 0
  end
  
end

if __FILE__ == $0
  project = Project.new("Project ABC", 5000, 1000)
  puts project.name
  puts project.funding
  project.remove_funds
  puts project.funding
  project.add_funds
  puts project.funding
end