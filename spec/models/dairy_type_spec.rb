require "rails_helper"

RSpec.describe DairyType, type: :model do
  describe "Direct Associations" do
    it { should have_many(:coffee_orders) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it {
      should validate_inclusion_of(:dairy_type).in_array(["2%", "skim", "oat milk",
                                                          "almond milk", "lactose free"])
    }
  end
end
