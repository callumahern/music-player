# frozen_string_literal: true

class VinylPlayer
  attr_reader :state
  def initialize(state = :off)
    @state = state
  end

  def turn_on
    @state = :on
  end

  def turn_off; end
end
