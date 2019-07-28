require_relative 'messages.rb'
require_relative 'car.rb'
require_relative 'color.rb'
require_relative 'city.rb'

class Journey

  attr_reader :action, :car, :color, :city, :message

  def initialize
    @action = action
    @color = Color.new
    @car = Car.new
    @city = City.new
    @message = Messages.new
  end

  def welcome_screen
    message.welcome
    car_model
  end

  def car_model
    message.chose_car
    car.car_model
    car.valid? ? chose_color : error_message
  end

  def chose_color
    message.chose_color
    color.car_color
    color.valid? ? chose_city : error_message
  end

  def chose_city
    message.chose_city
    city.which_city
    city.valid? ? final_message : error_message
  end

  def final_message
    puts "Today, I'm going to take my #{color.model_color} #{car.model} and go to #{city.my_city}"
  end

  def error_message
    message.errors
    @action = gets.chomp.upcase
    logic
  end

  def logic
    case action
    when 'Y'
      car_model
    else
      message.goodbye
    end
  end
end

my_journey = Journey.new
my_journey.welcome_screen
