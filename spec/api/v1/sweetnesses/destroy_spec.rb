require "rails_helper"

RSpec.describe "sweetnesses#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/sweetnesses/#{sweetness.id}"
  end

  describe "basic destroy" do
    let!(:sweetness) { create(:sweetness) }

    it "updates the resource" do
      expect(SweetnessResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { Sweetness.count }.by(-1)
      expect { sweetness.reload }.
        to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq("meta" => {})
    end
  end
end
