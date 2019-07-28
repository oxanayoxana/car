class City
  attr_accessor :my_city

  def initialize
    @my_city = my_city
  end

  def which_city
    @my_city = gets.chomp
  end

  def valid?
    return true if @my_city.size >= 2
  end
end