require "rails_helper"

RSpec.describe IngressesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ingresses").to route_to("ingresses#index")
    end

    it "routes to #new" do
      expect(:get => "/ingresses/new").to route_to("ingresses#new")
    end

    it "routes to #show" do
      expect(:get => "/ingresses/1").to route_to("ingresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ingresses/1/edit").to route_to("ingresses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ingresses").to route_to("ingresses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ingresses/1").to route_to("ingresses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ingresses/1").to route_to("ingresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ingresses/1").to route_to("ingresses#destroy", :id => "1")
    end

  end
end
