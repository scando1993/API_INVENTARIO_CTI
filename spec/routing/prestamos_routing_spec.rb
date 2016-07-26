require "rails_helper"

RSpec.describe PrestamosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/prestamos").to route_to("prestamos#index")
    end

    it "routes to #new" do
      expect(:get => "/prestamos/new").to route_to("prestamos#new")
    end

    it "routes to #show" do
      expect(:get => "/prestamos/1").to route_to("prestamos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/prestamos/1/edit").to route_to("prestamos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/prestamos").to route_to("prestamos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/prestamos/1").to route_to("prestamos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/prestamos/1").to route_to("prestamos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/prestamos/1").to route_to("prestamos#destroy", :id => "1")
    end

  end
end
