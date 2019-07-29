# frozen_string_literal: true

module Validator
  def validate(item)
    return true if item.size >= 3
  end
end
