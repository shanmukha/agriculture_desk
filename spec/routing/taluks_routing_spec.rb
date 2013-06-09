require "spec_helper"

describe TaluksController do
  describe "routing" do

    it "routes to #index" do
      get("/taluks").should route_to("taluks#index")
    end

    it "routes to #new" do
      get("/taluks/new").should route_to("taluks#new")
    end

    it "routes to #show" do
      get("/taluks/1").should route_to("taluks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/taluks/1/edit").should route_to("taluks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/taluks").should route_to("taluks#create")
    end

    it "routes to #update" do
      put("/taluks/1").should route_to("taluks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/taluks/1").should route_to("taluks#destroy", :id => "1")
    end

  end
end
