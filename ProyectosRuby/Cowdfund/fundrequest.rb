require_relative 'project'
require_relative 'die'

class FundRequest
  
  attr_reader :title
  
  def initialize(title)
    @title = title
    @projects = []
  end
  
  def add_project(a_project)
    @projects.push(a_project)
  end
  
  def request_funding
    puts "Hay #{@projects.size} proyectos que podrias terminar:"
    @projects.each do |project|
      puts project
    end
    @projects.each do |project|
      die = Die.new
      number_rolled = die.roll
      if number_rolled.odd?
        project.remove_funds
      else
        project.add_funds
      end
      puts project
    end
  end
end