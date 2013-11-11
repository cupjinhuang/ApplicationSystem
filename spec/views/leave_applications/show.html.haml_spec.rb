require 'spec_helper'

describe "leave_applications/show" do
  before(:each) do
    @leave_application = assign(:leave_application, stub_model(LeaveApplication,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Staff/)
    rendered.should match(/Position Title/)
    rendered.should match(/Phone Num/)
    rendered.should match(/Contact And Addr/)
    rendered.should match(/Leave Type/)
    rendered.should match(/1/)
    rendered.should match(/Obligation/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
