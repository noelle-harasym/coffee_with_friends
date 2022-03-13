class CoffeeType < ApplicationRecord
  # Direct associations

  has_many   :coffee_orders,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    coffee_type
  end
end
