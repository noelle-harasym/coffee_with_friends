require "rails_helper"

RSpec.describe SweetnessResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "sweetnesses",
          attributes: {},
        },
      }
    end

    let(:instance) do
      SweetnessResource.build(payload)
    end

    it "works" do
      expect do
        expect(instance.save).to eq(true),
                                 instance.errors.full_messages.to_sentence
      end.to change { Sweetness.count }.by(1)
    end
  end

  describe "updating" do
    let!(:sweetness) { create(:sweetness) }

    let(:payload) do
      {
        data: {
          id: sweetness.id.to_s,
          type: "sweetnesses",
          attributes: {}, # Todo!
        },
      }
    end

    let(:instance) do
      SweetnessResource.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect do
        expect(instance.update_attributes).to eq(true)
      end.to change { sweetness.reload.updated_at }
      # .and change { sweetness.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:sweetness) { create(:sweetness) }

    let(:instance) do
      SweetnessResource.find(id: sweetness.id)
    end

    it "works" do
      expect do
        expect(instance.destroy).to eq(true)
      end.to change { Sweetness.count }.by(-1)
    end
  end
end
