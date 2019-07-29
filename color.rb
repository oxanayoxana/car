# frozen_string_literal: true

require_relative 'validator.rb'

class Color
  extend Validator

  attr_accessor :model_color

  def initialize
    @model_color = model_color
  end

  def car_color
    @model_color = gets.chomp
  end

  def valid?
    Color.validate(model_color)
  end
end
