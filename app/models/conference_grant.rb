class ConferenceGrant < ActiveRecord::Base
  attr_accessible :name, :staff_id, :passport_id, :post, :years_at_iiis, :phone_num, :conf_name, :conf_date, :conf_place, :present_paper, :present_poster, :title1, :title2, :title3, :title4, :coauthored, :coauthor_type, :coauthor_present, :airfare, :reg_fee, :hotel_fare, :other_fare, :other_fare_descr, :last_approval_date, :host_fund_airfare, :host_fund_hotel, :host_fund_honorarium, :host_fund_others, :host_fund_others_descr, :other_fund_airfare, :other_fund_hotel, :other_fund_honorarium, :other_fund_others, :other_fund_others_descr, :leave_application_id
  belongs_to :leave_application
end
