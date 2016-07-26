require 'rails_helper'

RSpec.describe "Ingresos", type: :request do
  describe "GET /ingresos" do
    it "works! (now write some real specs)" do
      get ingresos_path
      expect(response).to have_http_status(200)
    end
  end
end
