require "rails_helper"

RSpec.describe KitsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/kits").to route_to("kits#index")
    end

    it "routes to #show" do
      expect(:get => "/kits/1").to route_to("kits#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/kits").to route_to("kits#create")
    end

    it "routes to #update" do
      expect(:put => "/kits/1").to route_to("kits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/kits/1").to route_to("kits#destroy", :id => "1")
    end

  end
end
