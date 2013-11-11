require 'spec_helper'

describe "ConferenceGrants" do
  describe "GET /conference_grants" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get conference_grants_path
      response.status.should be(200)
    end
  end
end
