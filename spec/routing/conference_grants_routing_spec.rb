require "spec_helper"

describe ConferenceGrantsController do
  describe "routing" do

    it "routes to #index" do
      get("/conference_grants").should route_to("conference_grants#index")
    end

    it "routes to #new" do
      get("/conference_grants/new").should route_to("conference_grants#new")
    end

    it "routes to #show" do
      get("/conference_grants/1").should route_to("conference_grants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/conference_grants/1/edit").should route_to("conference_grants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/conference_grants").should route_to("conference_grants#create")
    end

    it "routes to #update" do
      put("/conference_grants/1").should route_to("conference_grants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/conference_grants/1").should route_to("conference_grants#destroy", :id => "1")
    end

  end
end
