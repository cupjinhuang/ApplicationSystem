class CreateVisitorInvitations < ActiveRecord::Migration
  def change
    create_table :visitor_invitations do |t|
      t.string :Name
      t.integer :Staff_ID
      t.string :Passport_No
      t.string :Post
      t.integer :Years_at_IIIS
      t.string :Telephone_No
      t.string :Invitee
      t.string :Invitee_Name
      t.string :Invitee_Affiliation
      t.string :Invitee_Contact
      t.datetime :Visit_Date_start
      t.datetime :Visit_Date_end
      t.string :Give_talk
      t.string :Talk_title
      t.string :Airfare
      t.string :Hotel_accommodation
      t.string :Others
      t.string :Last_approval
      t.string :Other_airfare
      t.string :Other_Hotel_accommodation
      t.string :Other_Honorarium
      t.string :Other_others
      t.datetime :Date

      t.timestamps
    end
  end
end
