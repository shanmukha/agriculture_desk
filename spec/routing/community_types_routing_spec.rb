require "spec_helper"

describe CommunityTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/community_types").should route_to("community_types#index")
    end

    it "routes to #new" do
      get("/community_types/new").should route_to("community_types#new")
    end

    it "routes to #show" do
      get("/community_types/1").should route_to("community_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/community_types/1/edit").should route_to("community_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/community_types").should route_to("community_types#create")
    end

    it "routes to #update" do
      put("/community_types/1").should route_to("community_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/community_types/1").should route_to("community_types#destroy", :id => "1")
    end

  end
end
