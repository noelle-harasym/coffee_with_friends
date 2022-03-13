require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:coffee_orders) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:email) }

    it { should validate_presence_of(:mobile_number) }

    it { should validate_presence_of(:name) }

    it { should validate_presence_of(:password) }

    end
end
