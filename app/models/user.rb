class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :password, :presence => true

  # Scopes

  def to_s
    name
  end

end
