class Sweetness < ApplicationRecord
  # Direct associations

  has_many   :coffee_orders,
             foreign_key: "sweetness_type_id",
             dependent: :destroy

  # Indirect associations

  # Validations

  validates :sweetness_type,
            inclusion: { in: ["full", "half", "quarter"] }

  # Scopes

  def to_s
    sweetness_type
  end
end
