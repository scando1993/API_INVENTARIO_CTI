require "rails_helper"

RSpec.describe IngresosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ingresos").to route_to("ingresos#index")
    end

    it "routes to #new" do
      expect(:get => "/ingresos/new").to route_to("ingresos#new")
    end

    it "routes to #show" do
      expect(:get => "/ingresos/1").to route_to("ingresos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ingresos/1/edit").to route_to("ingresos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ingresos").to route_to("ingresos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ingresos/1").to route_to("ingresos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ingresos/1").to route_to("ingresos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ingresos/1").to route_to("ingresos#destroy", :id => "1")
    end

  end
end
