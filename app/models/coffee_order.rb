class CoffeeOrder < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  validates :rating, :presence => true

  validates :rating, :numericality => { :less_than_or_equal_to => 5 }

  # Scopes

  def to_s
    user.to_s
  end

end
