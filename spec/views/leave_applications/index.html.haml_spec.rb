require 'spec_helper'

describe "leave_applications/index" do
  before(:each) do
    assign(:leave_applications, [
      stub_model(LeaveApplication,
        :name => "Name",
        :staff_id => "Staff",
        :position_title => "Position Title",
        :phone_num => "Phone Num",
        :contact_and_addr => "Contact And Addr",
        :leave_type => "Leave Type",
        :working_day_num => 1,
        :obligation => "Obligation",
        :status => 2,
        :user_id => 3
      ),
      stub_model(LeaveApplication,
        :name => "Name",
        :staff_id => "Staff",
        :position_title => "Position Title",
        :phone_num => "Phone Num",
        :contact_and_addr => "Contact And Addr",
        :leave_type => "Leave Type",
        :working_day_num => 1,
        :obligation => "Obligation",
        :status => 2,
        :user_id => 3
      )
    ])
  end

  it "renders a list of leave_applications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Staff".to_s, :count => 2
    assert_select "tr>td", :text => "Position Title".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Num".to_s, :count => 2
    assert_select "tr>td", :text => "Contact And Addr".to_s, :count => 2
    assert_select "tr>td", :text => "Leave Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Obligation".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
