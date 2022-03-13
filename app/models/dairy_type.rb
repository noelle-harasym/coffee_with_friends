class DairyType < ApplicationRecord
  # Direct associations

  has_many   :coffee_orders,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :dairy_type, :inclusion => { :in => [ "2%", "skim", "oat milk", "almond milk", "lactose free" ]  }

  # Scopes

  def to_s
    dairy_type
  end

end
