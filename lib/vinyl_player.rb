# frozen_string_literal: true
require 'pry'

class VinylPlayer
  attr_reader :state

  def initialize(state = :off)
    @state = state
  end

  def turn_on
    raise 'Turntable is already on' if @state == :on

    @state = :on
  end

  def turn_off
    raise 'Turntable is already off' if @state == :off

    @state = :off
  end
end
