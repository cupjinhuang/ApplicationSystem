require "spec_helper"

describe VisitorInvitationsController do
  describe "routing" do

    it "routes to #index" do
      get("/visitor_invitations").should route_to("visitor_invitations#index")
    end

    it "routes to #new" do
      get("/visitor_invitations/new").should route_to("visitor_invitations#new")
    end

    it "routes to #show" do
      get("/visitor_invitations/1").should route_to("visitor_invitations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/visitor_invitations/1/edit").should route_to("visitor_invitations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/visitor_invitations").should route_to("visitor_invitations#create")
    end

    it "routes to #update" do
      put("/visitor_invitations/1").should route_to("visitor_invitations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/visitor_invitations/1").should route_to("visitor_invitations#destroy", :id => "1")
    end

  end
end
