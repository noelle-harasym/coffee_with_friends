require "rails_helper"

RSpec.describe "sweetnesses#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/sweetnesses/#{sweetness.id}", params: params
  end

  describe "basic fetch" do
    let!(:sweetness) { create(:sweetness) }

    it "works" do
      expect(SweetnessResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq("sweetnesses")
      expect(d.id).to eq(sweetness.id)
    end
  end
end
