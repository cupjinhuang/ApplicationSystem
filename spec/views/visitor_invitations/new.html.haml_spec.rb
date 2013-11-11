require 'spec_helper'

describe "visitor_invitations/new" do
  before(:each) do
    assign(:visitor_invitation, stub_model(VisitorInvitation,
      :Name => "MyString",
      :Staff_ID => 1,
      :Passport_No => "MyString",
      :Post => "MyString",
      :Years_at_IIIS => 1,
      :Telephone_No => "MyString",
      :Invitee => "MyString",
      :Invitee_Name => "MyString",
      :Invitee_Affiliation => "MyString",
      :Invitee_Contact => "MyString",
      :Give_talk => "MyString",
      :Talk_title => "MyString",
      :Airfare => "MyString",
      :Hotel_accommodation => "MyString",
      :Others => "MyString",
      :Last_approval => "MyString",
      :Other_airfare => "MyString",
      :Other_Hotel_accommodation => "MyString",
      :Other_Honorarium => "MyString",
      :Other_others => "MyString"
    ).as_new_record)
  end

  it "renders new visitor_invitation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visitor_invitations_path, "post" do
      assert_select "input#visitor_invitation_Name[name=?]", "visitor_invitation[Name]"
      assert_select "input#visitor_invitation_Staff_ID[name=?]", "visitor_invitation[Staff_ID]"
      assert_select "input#visitor_invitation_Passport_No[name=?]", "visitor_invitation[Passport_No]"
      assert_select "input#visitor_invitation_Post[name=?]", "visitor_invitation[Post]"
      assert_select "input#visitor_invitation_Years_at_IIIS[name=?]", "visitor_invitation[Years_at_IIIS]"
      assert_select "input#visitor_invitation_Telephone_No[name=?]", "visitor_invitation[Telephone_No]"
      assert_select "input#visitor_invitation_Invitee[name=?]", "visitor_invitation[Invitee]"
      assert_select "input#visitor_invitation_Invitee_Name[name=?]", "visitor_invitation[Invitee_Name]"
      assert_select "input#visitor_invitation_Invitee_Affiliation[name=?]", "visitor_invitation[Invitee_Affiliation]"
      assert_select "input#visitor_invitation_Invitee_Contact[name=?]", "visitor_invitation[Invitee_Contact]"
      assert_select "input#visitor_invitation_Give_talk[name=?]", "visitor_invitation[Give_talk]"
      assert_select "input#visitor_invitation_Talk_title[name=?]", "visitor_invitation[Talk_title]"
      assert_select "input#visitor_invitation_Airfare[name=?]", "visitor_invitation[Airfare]"
      assert_select "input#visitor_invitation_Hotel_accommodation[name=?]", "visitor_invitation[Hotel_accommodation]"
      assert_select "input#visitor_invitation_Others[name=?]", "visitor_invitation[Others]"
      assert_select "input#visitor_invitation_Last_approval[name=?]", "visitor_invitation[Last_approval]"
      assert_select "input#visitor_invitation_Other_airfare[name=?]", "visitor_invitation[Other_airfare]"
      assert_select "input#visitor_invitation_Other_Hotel_accommodation[name=?]", "visitor_invitation[Other_Hotel_accommodation]"
      assert_select "input#visitor_invitation_Other_Honorarium[name=?]", "visitor_invitation[Other_Honorarium]"
      assert_select "input#visitor_invitation_Other_others[name=?]", "visitor_invitation[Other_others]"
    end
  end
end
