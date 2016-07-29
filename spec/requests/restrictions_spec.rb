require 'rails_helper'

RSpec.describe "Restrictions", type: :request do
  describe "GET /restrictions" do
    it "works! (now write some real specs)" do
      get restrictions_path
      expect(response).to have_http_status(200)
    end
  end
end
