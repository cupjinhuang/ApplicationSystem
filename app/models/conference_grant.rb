class ConferenceGrant < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :leave_application
end
