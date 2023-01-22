# frozen_string_literal: true

require 'vinyl_player'
require 'pry'

RSpec.describe VinylPlayer do

  let(:vinyl) { VinylPlayer.new }
  context 'vinyl player can be created' do
    it 'with a new instance' do
      expect(vinyl.class).to eq VinylPlayer
    end
  end

  context 'vinyl player' do
    it 'responds to #turn_on?' do
      expect(vinyl).to respond_to :turn_on
    end

    it 'responds to #turn_off?' do
      expect(vinyl).to respond_to :turn_off
    end
  end

  context 'vinyl player has a persistent state' do
    it 'and defaults as off when created' do
      expect(vinyl.state).to eq :off
    end

    it '#turn_on changes #state' do
      vinyl.turn_on
      expect(vinyl.state).to eq :on
    end
  end

  context 'cannot turn vinyl player ' do
    it 'on if already on' do
      vinyl.turn_on
      expect{ vinyl.turn_on }.to raise_error 'Turntable is already on'
    end

    it 'off if already off' do
      expect{ vinyl.turn_off }.to raise_error 'Turntable is already off'
    end
  end

  context 'can control the volume' do
    it 'and turn it up' do
    
    end
  end
end

# - Vinyl player can be turned on
# - Vinyl player can be turned off
# - Record can be placed on vinyl player
# - Record can be played
# - Record can be turned over (side A / side B)
