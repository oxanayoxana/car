# frozen_string_literal: true

require_relative 'validator.rb'

class Car
  extend Validator

  attr_accessor :model

  def initialize
    @model = model
  end

  def car_model
    @model = gets.chomp
  end

  def valid?
    Car.validate(model)
  end
end
