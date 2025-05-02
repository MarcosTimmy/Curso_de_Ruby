require_relative 'player'
require_relative 'game'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2) 
knuckleheads.add_player(player3)
knuckleheads.play


=begin


players = [player1, player2, player3]
    puts "Hay #{players.size} jugadores en el Juego"

    players.each do |player|
        player.thumbs_up
        puts player.name
    end
    players.each do |player|
        player.thumbs_up
        puts player.health
    end
    players.each do |player|
        player.blam
        player.w00t
        player.w00t
        puts player
    end

  


player2.name = "lawrence"

puts player1.health
puts player2.health
puts player3.health

puts player1.name
puts player2.name
puts player3.name
=end
