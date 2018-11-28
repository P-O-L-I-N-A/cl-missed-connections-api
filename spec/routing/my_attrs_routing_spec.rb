require "rails_helper"

RSpec.describe MyAttrsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/my_attrs").to route_to("my_attrs#index")
    end


    it "routes to #show" do
      expect(:get => "/my_attrs/1").to route_to("my_attrs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/my_attrs").to route_to("my_attrs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my_attrs/1").to route_to("my_attrs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my_attrs/1").to route_to("my_attrs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my_attrs/1").to route_to("my_attrs#destroy", :id => "1")
    end

  end
end
