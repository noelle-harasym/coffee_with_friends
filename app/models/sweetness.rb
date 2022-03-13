class Sweetness < ApplicationRecord
  # Direct associations

  has_many   :coffee_orders,
             foreign_key: "sweetness_type_id",
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    sweetness_type
  end
end
