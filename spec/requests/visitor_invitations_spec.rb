require 'spec_helper'

describe "VisitorInvitations" do
  describe "GET /visitor_invitations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get visitor_invitations_path
      response.status.should be(200)
    end
  end
end
