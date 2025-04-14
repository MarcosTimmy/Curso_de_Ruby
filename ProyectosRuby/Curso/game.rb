require_relative 'player'
require_relative 'die'

class Game
    attr_reader :title

    def initialize(title)
        @title = title
        @players = []
    end
    def add_player(a_player)
        @players << a_player
      end
      
      # or using the push method:
      
      def add_player(a_player)
        @players.push(a_player)
      end

      def play
        puts "Hay #{@players.size} jugadores en el #{@title}: "
        @players.each do |player|
          puts player
        end
        @players.each do |player|
          die = Die.new
          case die.roll
          when 1..2
            player.blam
          when 3..4
            puts "#{player.name} was skipped."
          else
            player.w00t
          end
          # player.blam
          # player.w00t
          puts player
        end
      end
      if __FILE__ == $0
        player1 = Player.new("moe")
        player2 = Player.new("larry", 60)
        player3 = Player.new("curly", 125)

        knuckleheads = Game.new("Knuckleheads")
        knuckleheads.add_player(player1)
        knuckleheads.add_player(player2)
        knuckleheads.add_player(player3)
        knuckleheads.play
      end

end