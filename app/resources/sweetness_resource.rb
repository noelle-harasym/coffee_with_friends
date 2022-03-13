class SweetnessResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :sweetness_type, :integer

  # Direct associations

  # Indirect associations

end
