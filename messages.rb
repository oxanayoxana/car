# frozen_string_literal: true

class Messages
  def welcome
    puts 'Welcome!'
  end

  def chose_car
    puts 'Please, enter your car model: '
  end

  def chose_color
    puts 'Please, enter color of this car: '
  end

  def chose_city
    puts 'Which city are you heading to? Type here: '
  end

  def errors
    puts 'Oops, wrong input.'
    puts 'Type Y if you want to continue, and any other key to quit'
  end

  def goodbye
    puts 'Goodbye'
  end
end
