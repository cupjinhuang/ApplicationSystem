class LeaveApplication < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :leave_grant
  has_one :conference_grant
  belongs_to :user
end
