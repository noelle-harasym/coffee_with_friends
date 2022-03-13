class SweetnessResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :sweetness_type, :integer

  # Direct associations

  has_many   :coffee_orders,
             foreign_key: :sweetness_type_id

  # Indirect associations

end
