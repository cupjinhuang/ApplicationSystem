require 'spec_helper'

describe "conference_grants/index" do
  before(:each) do
    assign(:conference_grants, [
      stub_model(ConferenceGrant,
        :name => "Name",
        :staff_id => "Staff",
        :passport_id => "Passport",
        :post => "Post",
        :years_at_iiis => 1,
        :phone_num => "Phone Num",
        :conf_name => "Conf Name",
        :conf_place => "Conf Place",
        :present_paper => false,
        :present_poster => false,
        :title1 => "Title1",
        :title2 => "Title2",
        :title3 => "Title3",
        :title4 => "Title4",
        :coauthored => false,
        :coauthor_type => "Coauthor Type",
        :coauthor_present => false,
        :airfare => 1.5,
        :reg_fee => 2.5,
        :hotel_fare => 3.5,
        :other_fare => 4.5,
        :other_fare_descr => "Other Fare Descr",
        :last_approval_date => "Last Approval Date",
        :host_fund_airfare => false,
        :host_fund_hotel => false,
        :host_fund_honorarium => false,
        :host_fund_others => false,
        :host_fund_others_descr => "Host Fund Others Descr",
        :other_fund_airfare => false,
        :other_fund_hotel => false,
        :other_fund_honorarium => false,
        :other_fund_others => false,
        :other_fund_others_descr => "Other Fund Others Descr",
        :leave_application_id => 2
      ),
      stub_model(ConferenceGrant,
        :name => "Name",
        :staff_id => "Staff",
        :passport_id => "Passport",
        :post => "Post",
        :years_at_iiis => 1,
        :phone_num => "Phone Num",
        :conf_name => "Conf Name",
        :conf_place => "Conf Place",
        :present_paper => false,
        :present_poster => false,
        :title1 => "Title1",
        :title2 => "Title2",
        :title3 => "Title3",
        :title4 => "Title4",
        :coauthored => false,
        :coauthor_type => "Coauthor Type",
        :coauthor_present => false,
        :airfare => 1.5,
        :reg_fee => 2.5,
        :hotel_fare => 3.5,
        :other_fare => 4.5,
        :other_fare_descr => "Other Fare Descr",
        :last_approval_date => "Last Approval Date",
        :host_fund_airfare => false,
        :host_fund_hotel => false,
        :host_fund_honorarium => false,
        :host_fund_others => false,
        :host_fund_others_descr => "Host Fund Others Descr",
        :other_fund_airfare => false,
        :other_fund_hotel => false,
        :other_fund_honorarium => false,
        :other_fund_others => false,
        :other_fund_others_descr => "Other Fund Others Descr",
        :leave_application_id => 2
      )
    ])
  end

  it "renders a list of conference_grants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Staff".to_s, :count => 2
    assert_select "tr>td", :text => "Passport".to_s, :count => 2
    assert_select "tr>td", :text => "Post".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Phone Num".to_s, :count => 2
    assert_select "tr>td", :text => "Conf Name".to_s, :count => 2
    assert_select "tr>td", :text => "Conf Place".to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Title1".to_s, :count => 2
    assert_select "tr>td", :text => "Title2".to_s, :count => 2
    assert_select "tr>td", :text => "Title3".to_s, :count => 2
    assert_select "tr>td", :text => "Title4".to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Coauthor Type".to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => "Other Fare Descr".to_s, :count => 2
    assert_select "tr>td", :text => "Last Approval Date".to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Host Fund Others Descr".to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    #assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Other Fund Others Descr".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
