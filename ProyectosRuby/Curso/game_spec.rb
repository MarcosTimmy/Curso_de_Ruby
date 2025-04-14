require_relative 'game'

describe Game do

  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end


    
    it "le  importa al jugador si se saca un número alto" do	
        allow_any_instance_of(Die).to receive(:roll).and_return(5)
        @game.play 
        @player.health.should == @initial_health + 15
    end

    it "el jugador se saca un número medio" do
        allow_any_instance_of(Die).to receive(:roll).and_return(3)
        @game.play 
        @player.health.should == @initial_health
    end 
    
end
