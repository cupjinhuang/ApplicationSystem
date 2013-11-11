require 'spec_helper'

describe "leave_applications/edit" do
  before(:each) do
    @leave_application = assign(:leave_application, stub_model(LeaveApplication,
      :name => "MyString",
      :staff_id => "MyString",
      :position_title => "MyString",
      :phone_num => "MyString",
      :contact_and_addr => "MyString",
      :leave_type => "MyString",
      :working_day_num => 1,
      :obligation => "MyString",
      :status => 1,
      :user_id => 1
    ))
  end

  it "renders the edit leave_application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", leave_application_path(@leave_application), "post" do
      assert_select "input#leave_application_name[name=?]", "leave_application[name]"
      assert_select "input#leave_application_staff_id[name=?]", "leave_application[staff_id]"
      assert_select "input#leave_application_position_title[name=?]", "leave_application[position_title]"
      assert_select "input#leave_application_phone_num[name=?]", "leave_application[phone_num]"
      assert_select "input#leave_application_contact_and_addr[name=?]", "leave_application[contact_and_addr]"
      assert_select "input#leave_application_leave_type[name=?]", "leave_application[leave_type]"
      assert_select "input#leave_application_working_day_num[name=?]", "leave_application[working_day_num]"
      assert_select "input#leave_application_obligation[name=?]", "leave_application[obligation]"
      assert_select "input#leave_application_status[name=?]", "leave_application[status]"
      assert_select "input#leave_application_user_id[name=?]", "leave_application[user_id]"
    end
  end
end
