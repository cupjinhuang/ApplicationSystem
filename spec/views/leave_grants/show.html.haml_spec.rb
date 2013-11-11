require 'spec_helper'

describe "leave_grants/show" do
  before(:each) do
    @leave_grant = assign(:leave_grant, stub_model(LeaveGrant,
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
    rendered.should match(/Visit Univerisity Name/)
    rendered.should match(/Inviter Name/)
    rendered.should match(/Inviter Contact/)
    rendered.should match(/false/)
    rendered.should match(/Title1/)
    rendered.should match(/Title2/)
    rendered.should match(/Title3/)
    rendered.should match(/Title4/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/Last Approval Date/)
    rendered.should match(/3/)
  end
end
