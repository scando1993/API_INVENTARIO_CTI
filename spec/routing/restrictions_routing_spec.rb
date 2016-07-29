require "rails_helper"

RSpec.describe RestrictionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/restrictions").to route_to("restrictions#index")
    end

    it "routes to #new" do
      expect(:get => "/restrictions/new").to route_to("restrictions#new")
    end

    it "routes to #show" do
      expect(:get => "/restrictions/1").to route_to("restrictions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/restrictions/1/edit").to route_to("restrictions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/restrictions").to route_to("restrictions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restrictions/1").to route_to("restrictions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restrictions/1").to route_to("restrictions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restrictions/1").to route_to("restrictions#destroy", :id => "1")
    end

  end
end
