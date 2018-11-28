require "rails_helper"

RSpec.describe AttrsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/attrs").to route_to("attrs#index")
    end


    it "routes to #show" do
      expect(:get => "/attrs/1").to route_to("attrs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/attrs").to route_to("attrs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/attrs/1").to route_to("attrs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/attrs/1").to route_to("attrs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/attrs/1").to route_to("attrs#destroy", :id => "1")
    end

  end
end
