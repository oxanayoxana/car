
class Car
  attr_accessor :model

  def initialize
    @model = model
  end

  def car_model
    @model = gets.chomp
  end

  def valid?
    return true if @model.size >= 3
  end

end
