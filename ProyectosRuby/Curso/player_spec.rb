require_relative 'player'	


describe Player do
    it "Tiene un nombre en mayuscula" do 
        player = Player.new("Larry", 150)
        expect(player.name).to eq("Larry")
    end
    it "has an initial health" do 
        player = Player.new("Larry", 150)
        player.health.should == 150
    end

    it "has a string representation" do
    player = Player.new("Larry", 150)
    player.to_s.should == "Yo soy Larry y tengo 150 de salud y de puntuacion tiene 155"
    end

    it "computes a score as the sum of its health and length of name" do
        player = Player.new("Larry", 150)
        player.score.should == (150 + 5)
        end


    it "increases health by 15 when w00ted" do 
        initial_health = 150
        player = Player.new("Larry", initial_health)
        player.w00t
        player.health.should == initial_health + 15
    end

    it "decreases health by 10 when blammed" do
        initial_health = 150
        player = Player.new("Larry", initial_health)
        player.blam
        player.health.should == initial_health - 10
end
before do
    $stdout = StringIO.new
end
context "Tiene una salud mayor que 100 "
    before do 
    @player = Player.new("Larry", 150)
    end
    it "es fuerte " do
        expect(@player).to be_strong
    end
end

context "Tiene una salud menor 100" do
    before do
      @player = Player.new("larry", 100)
    end
  
    it "Es menor" do
    #   @player.should_not be_strong
  
      # or use alternate expectation syntax:
       expect(@player).not_to be_strong
    end
  

end



