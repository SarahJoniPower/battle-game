require 'player'

describe Player do


  describe '#receive_damage' do
    it 'it reduces player HP by 10' do
      player = Player.new('John')
      expect{player.receive_damage}.to change {player.hp}.by(-10)
    end
  end
end
