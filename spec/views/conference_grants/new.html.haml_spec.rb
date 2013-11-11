require 'spec_helper'

describe "conference_grants/new" do
  before(:each) do
    assign(:conference_grant, stub_model(ConferenceGrant,
      :name => "MyString",
      :staff_id => "MyString",
      :passport_id => "MyString",
      :post => "MyString",
      :years_at_iiis => 1,
      :phone_num => "MyString",
      :conf_name => "MyString",
      :conf_place => "MyString",
      :present_paper => false,
      :present_poster => false,
      :title1 => "MyString",
      :title2 => "MyString",
      :title3 => "MyString",
      :title4 => "MyString",
      :coauthored => false,
      :coauthor_type => "MyString",
      :coauthor_present => false,
      :airfare => 1.5,
      :reg_fee => 1.5,
      :hotel_fare => 1.5,
      :other_fare => 1.5,
      :other_fare_descr => "MyString",
      :last_approval_date => "MyString",
      :host_fund_airfare => false,
      :host_fund_hotel => false,
      :host_fund_honorarium => false,
      :host_fund_others => false,
      :host_fund_others_descr => "MyString",
      :other_fund_airfare => false,
      :other_fund_hotel => false,
      :other_fund_honorarium => false,
      :other_fund_others => false,
      :other_fund_others_descr => "MyString",
      :leave_application_id => 1
    ).as_new_record)
  end

  it "renders new conference_grant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", conference_grants_path, "post" do
      assert_select "input#conference_grant_name[name=?]", "conference_grant[name]"
      assert_select "input#conference_grant_staff_id[name=?]", "conference_grant[staff_id]"
      assert_select "input#conference_grant_passport_id[name=?]", "conference_grant[passport_id]"
      assert_select "input#conference_grant_post[name=?]", "conference_grant[post]"
      assert_select "input#conference_grant_years_at_iiis[name=?]", "conference_grant[years_at_iiis]"
      assert_select "input#conference_grant_phone_num[name=?]", "conference_grant[phone_num]"
      assert_select "input#conference_grant_conf_name[name=?]", "conference_grant[conf_name]"
      assert_select "input#conference_grant_conf_place[name=?]", "conference_grant[conf_place]"
      assert_select "input#conference_grant_present_paper[name=?]", "conference_grant[present_paper]"
      assert_select "input#conference_grant_present_poster[name=?]", "conference_grant[present_poster]"
      assert_select "input#conference_grant_title1[name=?]", "conference_grant[title1]"
      assert_select "input#conference_grant_title2[name=?]", "conference_grant[title2]"
      assert_select "input#conference_grant_title3[name=?]", "conference_grant[title3]"
      assert_select "input#conference_grant_title4[name=?]", "conference_grant[title4]"
      assert_select "input#conference_grant_coauthored[name=?]", "conference_grant[coauthored]"
      assert_select "input#conference_grant_coauthor_type[name=?]", "conference_grant[coauthor_type]"
      assert_select "input#conference_grant_coauthor_present[name=?]", "conference_grant[coauthor_present]"
      assert_select "input#conference_grant_airfare[name=?]", "conference_grant[airfare]"
      assert_select "input#conference_grant_reg_fee[name=?]", "conference_grant[reg_fee]"
      assert_select "input#conference_grant_hotel_fare[name=?]", "conference_grant[hotel_fare]"
      assert_select "input#conference_grant_other_fare[name=?]", "conference_grant[other_fare]"
      assert_select "input#conference_grant_other_fare_descr[name=?]", "conference_grant[other_fare_descr]"
      assert_select "input#conference_grant_last_approval_date[name=?]", "conference_grant[last_approval_date]"
      assert_select "input#conference_grant_host_fund_airfare[name=?]", "conference_grant[host_fund_airfare]"
      assert_select "input#conference_grant_host_fund_hotel[name=?]", "conference_grant[host_fund_hotel]"
      assert_select "input#conference_grant_host_fund_honorarium[name=?]", "conference_grant[host_fund_honorarium]"
      assert_select "input#conference_grant_host_fund_others[name=?]", "conference_grant[host_fund_others]"
      assert_select "input#conference_grant_host_fund_others_descr[name=?]", "conference_grant[host_fund_others_descr]"
      assert_select "input#conference_grant_other_fund_airfare[name=?]", "conference_grant[other_fund_airfare]"
      assert_select "input#conference_grant_other_fund_hotel[name=?]", "conference_grant[other_fund_hotel]"
      assert_select "input#conference_grant_other_fund_honorarium[name=?]", "conference_grant[other_fund_honorarium]"
      assert_select "input#conference_grant_other_fund_others[name=?]", "conference_grant[other_fund_others]"
      assert_select "input#conference_grant_other_fund_others_descr[name=?]", "conference_grant[other_fund_others_descr]"
      assert_select "input#conference_grant_leave_application_id[name=?]", "conference_grant[leave_application_id]"
    end
  end
end
