require "rails_helper"

RSpec.describe PrestariosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/prestarios").to route_to("prestarios#index")
    end

    it "routes to #new" do
      expect(:get => "/prestarios/new").to route_to("prestarios#new")
    end

    it "routes to #show" do
      expect(:get => "/prestarios/1").to route_to("prestarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/prestarios/1/edit").to route_to("prestarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/prestarios").to route_to("prestarios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/prestarios/1").to route_to("prestarios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/prestarios/1").to route_to("prestarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/prestarios/1").to route_to("prestarios#destroy", :id => "1")
    end

  end
end
