class CoffeeOrderResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :coffee_type_id, :integer
  attribute :modification_iced, :boolean
  attribute :dairy_type_id, :integer
  attribute :sweetness_type_id, :integer
  attribute :modification_other, :string
  attribute :rating, :integer
  attribute :picture, :string
  attribute :date, :date

  # Direct associations

  belongs_to :sweetness_type,
             resource: SweetnessResource

  belongs_to :dairy_type

  belongs_to :coffee_type

  belongs_to :user

  # Indirect associations
end
