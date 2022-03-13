class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :presence => true

  validates :password, :presence => true

  # Scopes

  def to_s
    name
  end

end
