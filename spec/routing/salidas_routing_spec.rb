require "rails_helper"

RSpec.describe SalidasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/salidas").to route_to("salidas#index")
    end

    it "routes to #new" do
      expect(:get => "/salidas/new").to route_to("salidas#new")
    end

    it "routes to #show" do
      expect(:get => "/salidas/1").to route_to("salidas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/salidas/1/edit").to route_to("salidas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/salidas").to route_to("salidas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/salidas/1").to route_to("salidas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/salidas/1").to route_to("salidas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/salidas/1").to route_to("salidas#destroy", :id => "1")
    end

  end
end
