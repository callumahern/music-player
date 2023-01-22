# frozen_string_literal: true
require 'pry'

class VinylPlayer
  attr_reader :state

  def initialize(state = :off)
    @state = state
  end

  def turn_on
    turnable_already_on_error?

    @state = :on
  end

  def turn_off
    turnable_already_off_error?

    @state = :off
  end

  private

  def turnable_already_on_error?
    raise 'Turntable is already on' if @state == :on
  end

  def turnable_already_off_error?
    raise 'Turntable is already off' if @state == :off
  end
end
