# frozen_string_literal: true

require_relative 'validator.rb'

class City
  extend Validator

  attr_accessor :my_city

  def initialize
    @my_city = my_city
  end

  def which_city
    @my_city = gets.chomp
  end

  def valid?
    City.validate(my_city)
  end
end
