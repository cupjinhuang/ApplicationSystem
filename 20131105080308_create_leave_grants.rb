class CreateLeaveGrants < ActiveRecord::Migration
  def change
    create_table :leave_grants do |t|
      t.string :name
      t.string :staff_id
      t.string :passport_id
      t.string :post
      t.integer :years_at_iiis
      t.string :phone_num
      t.string :visit_univerisity_name
      t.string :inviter_name
      t.string :inviter_contact
      t.datetime :visit_date
      t.boolean :give_talk

      # to be decided whether to use 'has_many :talks'
      t.string :title1
      t.string :title2
      t.string :title3
      t.string :title4
      t.float :airfare
      t.float :hotel_fare
      t.integer :hotel_days
      t.float :other_fare
      t.string :last_approval_date

      # belongs_to :leave_application
      t.integer :leave_application_id

      t.timestamps
    end
  end
end
