require 'spec_helper'

describe "conference_grants/show" do
  before(:each) do
    @conference_grant = assign(:conference_grant, stub_model(ConferenceGrant,
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
      :reg_fee => 1.5,
      :hotel_fare => 1.5,
      :other_fare => 1.5,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Staff/)
    rendered.should match(/Passport/)
    rendered.should match(/Post/)
    rendered.should match(/1/)
    rendered.should match(/Phone Num/)
    rendered.should match(/Conf Name/)
    rendered.should match(/Conf Place/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Title1/)
    rendered.should match(/Title2/)
    rendered.should match(/Title3/)
    rendered.should match(/Title4/)
    rendered.should match(/false/)
    rendered.should match(/Coauthor Type/)
    rendered.should match(/false/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Other Fare Descr/)
    rendered.should match(/Last Approval Date/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Host Fund Others Descr/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Other Fund Others Descr/)
    rendered.should match(/2/)
  end
end
