require 'spec_helper'

describe "leave_grants/new" do
  before(:each) do
    assign(:leave_grant, stub_model(LeaveGrant,
      :name => "MyString",
      :staff_id => "MyString",
      :passport_id => "MyString",
      :post => "MyString",
      :years_at_iiis => 1,
      :phone_num => "MyString",
      :visit_univerisity_name => "MyString",
      :inviter_name => "MyString",
      :inviter_contact => "MyString",
      :give_talk => false,
      :title1 => "MyString",
      :title2 => "MyString",
      :title3 => "MyString",
      :title4 => "MyString",
      :airfare => 1.5,
      :hotel_fare => 1.5,
      :hotel_days => 1,
      :other_fare => 1.5,
      :last_approval_date => "MyString",
      :leave_application_id => 1
    ).as_new_record)
  end

  it "renders new leave_grant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", leave_grants_path, "post" do
      assert_select "input#leave_grant_name[name=?]", "leave_grant[name]"
      assert_select "input#leave_grant_staff_id[name=?]", "leave_grant[staff_id]"
      assert_select "input#leave_grant_passport_id[name=?]", "leave_grant[passport_id]"
      assert_select "input#leave_grant_post[name=?]", "leave_grant[post]"
      assert_select "input#leave_grant_years_at_iiis[name=?]", "leave_grant[years_at_iiis]"
      assert_select "input#leave_grant_phone_num[name=?]", "leave_grant[phone_num]"
      assert_select "input#leave_grant_visit_univerisity_name[name=?]", "leave_grant[visit_univerisity_name]"
      assert_select "input#leave_grant_inviter_name[name=?]", "leave_grant[inviter_name]"
      assert_select "input#leave_grant_inviter_contact[name=?]", "leave_grant[inviter_contact]"
      assert_select "input#leave_grant_give_talk[name=?]", "leave_grant[give_talk]"
      assert_select "input#leave_grant_title1[name=?]", "leave_grant[title1]"
      assert_select "input#leave_grant_title2[name=?]", "leave_grant[title2]"
      assert_select "input#leave_grant_title3[name=?]", "leave_grant[title3]"
      assert_select "input#leave_grant_title4[name=?]", "leave_grant[title4]"
      assert_select "input#leave_grant_airfare[name=?]", "leave_grant[airfare]"
      assert_select "input#leave_grant_hotel_fare[name=?]", "leave_grant[hotel_fare]"
      assert_select "input#leave_grant_hotel_days[name=?]", "leave_grant[hotel_days]"
      assert_select "input#leave_grant_other_fare[name=?]", "leave_grant[other_fare]"
      assert_select "input#leave_grant_last_approval_date[name=?]", "leave_grant[last_approval_date]"
      assert_select "input#leave_grant_leave_application_id[name=?]", "leave_grant[leave_application_id]"
    end
  end
end
