require "rails_helper"

RSpec.describe SweetnessResource, type: :resource do
  describe "serialization" do
    let!(:sweetness) { create(:sweetness) }

    it "works" do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(sweetness.id)
      expect(data.jsonapi_type).to eq("sweetnesses")
    end
  end

  describe "filtering" do
    let!(:sweetness1) { create(:sweetness) }
    let!(:sweetness2) { create(:sweetness) }

    context "by id" do
      before do
        params[:filter] = { id: { eq: sweetness2.id } }
      end

      it "works" do
        render
        expect(d.map(&:id)).to eq([sweetness2.id])
      end
    end
  end

  describe "sorting" do
    describe "by id" do
      let!(:sweetness1) { create(:sweetness) }
      let!(:sweetness2) { create(:sweetness) }

      context "when ascending" do
        before do
          params[:sort] = "id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      sweetness1.id,
                                      sweetness2.id,
                                    ])
        end
      end

      context "when descending" do
        before do
          params[:sort] = "-id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      sweetness2.id,
                                      sweetness1.id,
                                    ])
        end
      end
    end
  end

  describe "sideloading" do
    # ... your tests ...
  end
end
