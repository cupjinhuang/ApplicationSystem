require 'spec_helper'

describe "leave_grants/index" do
  before(:each) do
    assign(:leave_grants, [
      stub_model(LeaveGrant,
        :name => "Name",
        :staff_id => "Staff",
        :passport_id => "Passport",
        :post => "Post",
        :years_at_iiis => 1,
        :phone_num => "Phone Num",
        :visit_univerisity_name => "Visit Univerisity Name",
        :inviter_name => "Inviter Name",
        :inviter_contact => "Inviter Contact",
        :give_talk => false,
        :title1 => "Title1",
        :title2 => "Title2",
        :title3 => "Title3",
        :title4 => "Title4",
        :airfare => 1.5,
        :hotel_fare => 1.5,
        :hotel_days => 2,
        :other_fare => 1.5,
        :last_approval_date => "Last Approval Date",
        :leave_application_id => 3
      ),
      stub_model(LeaveGrant,
        :name => "Name",
        :staff_id => "Staff",
        :passport_id => "Passport",
        :post => "Post",
        :years_at_iiis => 1,
        :phone_num => "Phone Num",
        :visit_univerisity_name => "Visit Univerisity Name",
        :inviter_name => "Inviter Name",
        :inviter_contact => "Inviter Contact",
        :give_talk => false,
        :title1 => "Title1",
        :title2 => "Title2",
        :title3 => "Title3",
        :title4 => "Title4",
        :airfare => 1.5,
        :hotel_fare => 1.5,
        :hotel_days => 2,
        :other_fare => 1.5,
        :last_approval_date => "Last Approval Date",
        :leave_application_id => 3
      )
    ])
  end

  it "renders a list of leave_grants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Staff".to_s, :count => 2
    assert_select "tr>td", :text => "Passport".to_s, :count => 2
    assert_select "tr>td", :text => "Post".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Phone Num".to_s, :count => 2
    assert_select "tr>td", :text => "Visit Univerisity Name".to_s, :count => 2
    assert_select "tr>td", :text => "Inviter Name".to_s, :count => 2
    assert_select "tr>td", :text => "Inviter Contact".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Title1".to_s, :count => 2
    assert_select "tr>td", :text => "Title2".to_s, :count => 2
    assert_select "tr>td", :text => "Title3".to_s, :count => 2
    assert_select "tr>td", :text => "Title4".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Last Approval Date".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
