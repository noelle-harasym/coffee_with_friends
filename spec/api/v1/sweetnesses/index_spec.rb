require "rails_helper"

RSpec.describe "sweetnesses#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/sweetnesses", params: params
  end

  describe "basic fetch" do
    let!(:sweetness1) { create(:sweetness) }
    let!(:sweetness2) { create(:sweetness) }

    it "works" do
      expect(SweetnessResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(["sweetnesses"])
      expect(d.map(&:id)).to match_array([sweetness1.id, sweetness2.id])
    end
  end
end
