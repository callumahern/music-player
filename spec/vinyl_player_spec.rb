require 'vinyl_player'

RSpec.describe VinylPlayer do
  context 'vinyl player can be created' do
    it 'with a new instance' do
      vinyl = VinylPlayer.new
      expect(vinyl.class).to eq VinylPlayer
    end
  end

  context 'vinyl player' do
    it 'responds to #turn_on?' do
      vinyl = VinylPlayer.new
      expect(vinyl).to respond_to :turn_on
    end

    it 'responds to #turn_off?' do
      vinyl = VinylPlayer.new
      expect(vinyl).to respond_to :turn_off
    end
  end
  
  # context 'turntable can be turned' do
  #   it 'on' do

  #   end

  #   it 'off' do

  #   end
  # end
end


# - Vinyl player can be turned on 
# - Vinyl player can be turned off
# - Record can be placed on vinyl player 
# - Record can be played
# - Record can be turned over (side A / side B)