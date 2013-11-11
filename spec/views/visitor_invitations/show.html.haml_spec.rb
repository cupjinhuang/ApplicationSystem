require 'spec_helper'

describe "visitor_invitations/show" do
  before(:each) do
    @visitor_invitation = assign(:visitor_invitation, stub_model(VisitorInvitation,
      :Name => "Name",
      :Staff_ID => 1,
      :Passport_No => "Passport No",
      :Post => "Post",
      :Years_at_IIIS => 2,
      :Telephone_No => "Telephone No",
      :Invitee => "Invitee",
      :Invitee_Name => "Invitee Name",
      :Invitee_Affiliation => "Invitee Affiliation",
      :Invitee_Contact => "Invitee Contact",
      :Give_talk => "Give Talk",
      :Talk_title => "Talk Title",
      :Airfare => "Airfare",
      :Hotel_accommodation => "Hotel Accommodation",
      :Others => "Others",
      :Last_approval => "Last Approval",
      :Other_airfare => "Other Airfare",
      :Other_Hotel_accommodation => "Other Hotel Accommodation",
      :Other_Honorarium => "Other Honorarium",
      :Other_others => "Other Others"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Passport No/)
    rendered.should match(/Post/)
    rendered.should match(/2/)
    rendered.should match(/Telephone No/)
    rendered.should match(/Invitee/)
    rendered.should match(/Invitee Name/)
    rendered.should match(/Invitee Affiliation/)
    rendered.should match(/Invitee Contact/)
    rendered.should match(/Give Talk/)
    rendered.should match(/Talk Title/)
    rendered.should match(/Airfare/)
    rendered.should match(/Hotel Accommodation/)
    rendered.should match(/Others/)
    rendered.should match(/Last Approval/)
    rendered.should match(/Other Airfare/)
    rendered.should match(/Other Hotel Accommodation/)
    rendered.should match(/Other Honorarium/)
    rendered.should match(/Other Others/)
  end
end
