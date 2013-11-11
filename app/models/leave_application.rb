class LeaveApplication < ActiveRecord::Base
  attr_accessible :contact_and_addr, :end_date, :leave_type, :name, :obligation, :phone_num, :position_title, :prev_end_date, :prev_start_date, :staff_id, :start_date, :status, :user_id, :working_day_num
end
