# frozen_string_literal: true

module Validator
  def validate(item)
    return false if item.nil? == true
    return true if item.size >= 2
  end
end
