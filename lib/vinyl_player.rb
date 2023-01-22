# frozen_string_literal: true
require 'pry'

class VinylPlayer
  attr_reader :state

  def initialize(state = :off)
    @state = state
  end

  def turn_on
    turnable_already_on?

    @state = :on
  end

  def turn_off
    turnable_already_off?

    @state = :off
  end

  private

  def turnable_already_on?
    raise 'Turntable is already on' if @state == :on
  end

  def turnable_already_off?
    raise 'Turntable is already off' if @state == :off
  end
end
