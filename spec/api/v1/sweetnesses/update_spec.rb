require "rails_helper"

RSpec.describe "sweetnesses#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/sweetnesses/#{sweetness.id}", payload
  end

  describe "basic update" do
    let!(:sweetness) { create(:sweetness) }

    let(:payload) do
      {
        data: {
          id: sweetness.id.to_s,
          type: "sweetnesses",
          attributes: {
            # ... your attrs here
          },
        },
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit "updates the resource" do
      expect(SweetnessResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { sweetness.reload.attributes }
    end
  end
end
