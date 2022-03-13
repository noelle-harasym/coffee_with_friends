class Sweetness < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :sweetness_type, :inclusion => { :in => [ "full", "half", "quarter" ]  }

  # Scopes

  def to_s
    sweetness_type
  end

end
