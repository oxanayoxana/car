class Color

  attr_accessor :model_color

  def initialize
    @model_color = model_color
  end

  def car_color
    @model_color = gets.chomp
  end

  def valid?
    return true if @model_color.size >= 3
  end
end