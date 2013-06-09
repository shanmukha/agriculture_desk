require "spec_helper"

describe CommunityLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/community_levels").should route_to("community_levels#index")
    end

    it "routes to #new" do
      get("/community_levels/new").should route_to("community_levels#new")
    end

    it "routes to #show" do
      get("/community_levels/1").should route_to("community_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/community_levels/1/edit").should route_to("community_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/community_levels").should route_to("community_levels#create")
    end

    it "routes to #update" do
      put("/community_levels/1").should route_to("community_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/community_levels/1").should route_to("community_levels#destroy", :id => "1")
    end

  end
end
