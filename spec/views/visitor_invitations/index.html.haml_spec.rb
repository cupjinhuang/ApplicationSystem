require 'spec_helper'

describe "visitor_invitations/index" do
  before(:each) do
    assign(:visitor_invitations, [
      stub_model(VisitorInvitation,
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
      ),
      stub_model(VisitorInvitation,
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
      )
    ])
  end

  it "renders a list of visitor_invitations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Passport No".to_s, :count => 2
    assert_select "tr>td", :text => "Post".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Telephone No".to_s, :count => 2
    assert_select "tr>td", :text => "Invitee".to_s, :count => 2
    assert_select "tr>td", :text => "Invitee Name".to_s, :count => 2
    assert_select "tr>td", :text => "Invitee Affiliation".to_s, :count => 2
    assert_select "tr>td", :text => "Invitee Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Give Talk".to_s, :count => 2
    assert_select "tr>td", :text => "Talk Title".to_s, :count => 2
    assert_select "tr>td", :text => "Airfare".to_s, :count => 2
    assert_select "tr>td", :text => "Hotel Accommodation".to_s, :count => 2
    assert_select "tr>td", :text => "Others".to_s, :count => 2
    assert_select "tr>td", :text => "Last Approval".to_s, :count => 2
    assert_select "tr>td", :text => "Other Airfare".to_s, :count => 2
    assert_select "tr>td", :text => "Other Hotel Accommodation".to_s, :count => 2
    assert_select "tr>td", :text => "Other Honorarium".to_s, :count => 2
    assert_select "tr>td", :text => "Other Others".to_s, :count => 2
  end
end
