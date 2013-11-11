require "spec_helper"

describe LeaveApplicationsController do
  describe "routing" do

    it "routes to #index" do
      get("/leave_applications").should route_to("leave_applications#index")
    end

    it "routes to #new" do
      get("/leave_applications/new").should route_to("leave_applications#new")
    end

    it "routes to #show" do
      get("/leave_applications/1").should route_to("leave_applications#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leave_applications/1/edit").should route_to("leave_applications#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leave_applications").should route_to("leave_applications#create")
    end

    it "routes to #update" do
      put("/leave_applications/1").should route_to("leave_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leave_applications/1").should route_to("leave_applications#destroy", :id => "1")
    end

  end
end
