class LeaveGrant < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :leave_applications
end
