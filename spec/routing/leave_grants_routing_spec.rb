require "spec_helper"

describe LeaveGrantsController do
  describe "routing" do

    it "routes to #index" do
      get("/leave_grants").should route_to("leave_grants#index")
    end

    it "routes to #new" do
      get("/leave_grants/new").should route_to("leave_grants#new")
    end

    it "routes to #show" do
      get("/leave_grants/1").should route_to("leave_grants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leave_grants/1/edit").should route_to("leave_grants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leave_grants").should route_to("leave_grants#create")
    end

    it "routes to #update" do
      put("/leave_grants/1").should route_to("leave_grants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leave_grants/1").should route_to("leave_grants#destroy", :id => "1")
    end

  end
end
