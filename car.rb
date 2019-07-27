# frozen_string_literal: true

class Car
  attr_accessor :car, :color, :city, :action

  def initialize
    @car = car
    @color = color
    @city = city
    @action = action
  end

  def welcome_screen
    puts 'Welcome!'
    car_model
  end

  def car_model
    puts 'Please, enter your car model: '
    @car = gets.chomp
    @car.size >= 3 ? car_color : error_message
  end

  def car_color
    puts "Please, enter color of a #{@car}: "
    @color = gets.chomp
    @color.size >= 3 ? which_city : error_message
  end

  def which_city
    puts 'Which city are you heading to? Type here: '
    @city = gets.chomp
    @city.size >= 3 ? final_message : error_message
  end

  def final_message
    puts "Today, I'm going to take my #{@color} #{@car} and go to #{@city}"
  end

  def error_message
    puts 'Oops, wrong input.'
    puts 'Type Y if you want to continue, and any other key to quit'
    @action = gets.chomp.upcase
    logic
  end

  def logic
    case action
    when 'Y'
      car_model
    else
      puts 'Goodbye'
    end
  end
end

my_car = Car.new
my_car.welcome_screen
