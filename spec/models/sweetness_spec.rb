require 'rails_helper'

RSpec.describe Sweetness, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:coffee_orders) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_inclusion_of(:sweetness_type).in_array([ "full", "half", "quarter" ]) }

    end
end
